import 'dart:convert';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:smart_remove/utils/helper/helper_functions.dart';
import '../../../utils/constants/api_urls.dart';
import '../../services/api/api_serices.dart';
import '../../services/api/base_api_services.dart';

class HomeRepository{

  final ImagePicker _imagePicker = ImagePicker();
  final HkBaseApiServices _apiServices = HkApiServices();


  /// Pick Image from Device
  Future<XFile?> pickImageFromDevice(BuildContext context, ImageSource imageSource) async {
    try {

        final pickedImage = await _imagePicker.pickImage(source: imageSource, imageQuality: 100);

        // if image not selected throw exception
        if(pickedImage == null){
          throw 'Image is not selected';
        }
        return pickedImage;

    } catch (e) {
      // Throw the exception so it can be caught in the calling method
      rethrow;
    }
  }

  /// Check whether permission is granted or not
  Future<bool> isImagePickPermission(BuildContext context, ImageSource imageSource) async {
    try {
      // Check Storage/Camera Permission
      final bool permission;
      if (imageSource == ImageSource.gallery) {

        // Check android version so that we can target specific version
        // storage permission is not after android 10
        // we can request for manageExternalStorage for after android 10
        final deviceInfoPlugin = DeviceInfoPlugin();
        final deviceInfo = await deviceInfoPlugin.deviceInfo;
        final sdk = deviceInfo.data['version']['sdkInt']; // API LEVEL 30 = Android 11

        if(sdk >= 30){
          permission = await HkHelperFunctions.isPermissionGranted(Permission.manageExternalStorage);

        }else{
          permission = await HkHelperFunctions.isPermissionGranted(Permission.storage);
        }
      } else {

        permission = await HkHelperFunctions.isPermissionGranted(Permission.camera);
      }

      // Permission not granted throw Exception
      if(!permission){
        throw 'Permission not granted';
      }

      return permission;
    }catch(e){
      // Throw the exception so it can be caught in the calling method
      rethrow;
    }
  }

  /// Remove Background Using API
  Future<Uint8List> removeBackgroundWithBase64(BuildContext context, Uint8List? userPickedImage) async{
    try{

      // convert Uint8List user picked image  to base64
      String base64 = base64Encode(userPickedImage ?? []);

      // remove background
      String url = HkApiUrls.removeBGApi;
      Response response = await _apiServices.postApi(url: url,data: {'image_file_b64' : base64});

      return response.bodyBytes;

    }catch(e){
      rethrow;
    }
  }

  /// User Select the source Gallery/Camera
  Future<ImageSource?> selectImageSource(BuildContext context) async {
    try {
      ImageSource? imageSource = await HkHelperFunctions.showImageSourcePicker(context);
      if (imageSource == null) {
        throw 'No image source selected';
      }
      return imageSource;
    } catch (e) {
      // Throw the exception so it can be caught in the calling method
      rethrow;
    }
  }

}
