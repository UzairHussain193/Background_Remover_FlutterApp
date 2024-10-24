import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:screenshot/screenshot.dart';
import 'package:smart_remove/data/repositories/result/result_repository.dart';
import 'package:smart_remove/utils/constants/colors.dart';

import '../../../../utils/helper/helper_functions.dart';

class ResultController with ChangeNotifier {
  /// ----------------[VARIABLES]----------------
  final ResultRepository _resultRepo = ResultRepository();
  TransformationController scaleController = TransformationController();
  ScreenshotController screenshotController = ScreenshotController();

  // Setter
  Uint8List? _bgRemovedImage;
  Color? _selectedColor;
  Color _pickerColor = HkColors.primary;
  Uint8List? _imageWithBg;

  // Getters
  Uint8List? get bgRemovedImage => _bgRemovedImage;
  Uint8List? get imageWithBg => _imageWithBg;
  Color? get selectedColor => _selectedColor;
  Color get pickerColor => _pickerColor;
  /// ------------------[END]-------------------------


  /// ----------------[UPDATE_METHODS]------------------
  /// Update picker Color in variables
  void updatePickerColor(color) {
    _pickerColor = color;
    notifyListeners();
  }

  /// Update user selected Color in Variable
  void updateSelectedColor(color) {
    _selectedColor = color;
    notifyListeners();
  }

  /// Update the bgRemovedImage from HomeController to ResultController
  void updateBgRemovedImage(Uint8List image) {
    _bgRemovedImage = image;
    notifyListeners();
  }

  /// Update Image with any background
  void updateImageWithBg(Uint8List? image){
    _imageWithBg = image;
    notifyListeners();
  }
  /// ------------------[END]-------------------------

  /// ----------------[FUNCTIONAL_METHODS]------------------
  /// Save Image to Gallery from ImageBytes
  Future<void> saveImageToGallery(BuildContext context) async {
    try {

      Uint8List? image;
      if(selectedColor != null){
        await takeScreenShotOfImage(context);
        image = imageWithBg;
      }else{
        image = bgRemovedImage;
      }


      // Check condition if image with any color is present then download it otherwise download without bg image

      // save Image to Gallery
      final savedImage = await _resultRepo.saveImageToGallery(image);

      if (context.mounted) {
        HkHelperFunctions.successSnackBar(context,
            title: 'Congratulations!', message: 'You have successfully saved image to gallery\n${savedImage['filePath']}');
      }

      // Launch Gallery
      // await LaunchApp.openApp(
      //   androidPackageName: 'com.vivo.gallery',
      // );
    } catch (e) {
      if (context.mounted) HkHelperFunctions.errorSnackBar(context, title: 'Oh Snap', message: e.toString());
    }
  }

  /// Download Image with colorful background
  Future<void> takeScreenShotOfImage(BuildContext context) async{
    try{
      // Reset image zoom to 1 or normal
      resetImageZoom();

      // Take screenshot of full image
      Uint8List? capturedImage = await screenshotController.capture();

      updateImageWithBg(capturedImage);

    }catch(e){
      HkHelperFunctions.errorSnackBar(context, title: 'Oh Snap!', message: e.toString());
    }
  }

  /// Zoom Out the Image
  void zoomOut() {
    scaleController.value *= Matrix4.diagonal3Values(0.8, 0.8, 1.0);
    notifyListeners();
  }

  /// Zoom In The Image
  void zoomIn() {
    scaleController.value *= Matrix4.diagonal3Values(1.2, 1.2, 1.0);
    notifyListeners();
  }

  /// Reset Zoom of Image
  void resetImageZoom(){
    scaleController.value = Matrix4.identity();
    notifyListeners();
  }

  /// Flip The Image
  void flipImage() {
    scaleController.value.scale(-1.0, 1.0, 1.0);
    notifyListeners();
  }

  void resetFlipImage(){
    scaleController.value.scale(1.0,1.0,1.0);
    notifyListeners();
  }

  /// Reset Result Screen Image Remove color if there is , reset zoom and reset flip
  void resetResultImage(){
    resetImageZoom();
    updateSelectedColor(null);
    resetFlipImage();
  }

  /// Tap On Background Button
  void onBackgroundTap(BuildContext context) {
    // Show Color Picker
    HkHelperFunctions.showColorPicker(context, onColorChanged: (newColor) {
      updatePickerColor(newColor);
    }, onGotItTap: () {
      updateSelectedColor(pickerColor);
      Navigator.pop(context);
    });
  }
  /// ------------------[END]-------------------------
}
