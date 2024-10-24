


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smart_remove/data/repositories/home/home_repository.dart';
import 'package:smart_remove/features/smart_remove/screens/image_compare/image_compare.dart';
import 'package:smart_remove/utils/helper/helper_functions.dart';

class HomeController extends ChangeNotifier{



  /// ----------------[VARIABLES]----------------
  /// Repository
  final HomeRepository _homeRepo = HomeRepository();


  // Setters

  Uint8List? _userPickedImage;
  bool _isLoading = false;
  Uint8List? _bgRemovedImage;

  // Getters
  Uint8List? get userPickedImage  => _userPickedImage;
  bool get isLoading => _isLoading;
  Uint8List? get bgRemovedImage => _bgRemovedImage;

  /// ----------------[METHODS]----------------------------
  /// Upload Button for Pick image and remove background
  Future<void> uploadButtonTap(BuildContext context) async{
    try {
      // Start Loading
      _isLoading = true;
      notifyListeners();

      // Select Source of image gallery/camera
      ImageSource? imageSource = await _homeRepo.selectImageSource(context);

      // Check Storage/Camera Permission
      if(context.mounted) await _homeRepo.isImagePickPermission(context, imageSource!);

      // Pick Image
      final XFile? pickedImage;
      pickedImage = await _homeRepo.pickImageFromDevice(context, imageSource!);

      // Assign image as bytes to Variable if image is not null
      _userPickedImage = await pickedImage!.readAsBytes();

      // Remove Background
      if (context.mounted) _bgRemovedImage = await _homeRepo.removeBackgroundWithBase64(context, userPickedImage);

      if(context.mounted) Navigator.push(context, MaterialPageRoute(builder: (context) => const ImageCompareScreen(),));
    }catch(e){
      resetVariables();
      if(context.mounted) HkHelperFunctions.errorSnackBar(context, title: 'Oh Snap!', message: e.toString());
    }finally{
      // Stop Loading
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Reset variables if there is any exception/error caught
  void resetVariables(){

    if(_userPickedImage != null) _userPickedImage = null;
    _isLoading = false;

    if(_userPickedImage != null) _bgRemovedImage = null;

  }



}