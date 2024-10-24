
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/features/smart_remove/controllers/home/home_controller.dart';

import '../../screens/result/result.dart';
import '../result/result_controller.dart';

class ImageCompareController with ChangeNotifier{

  /// Variables
  // Setters
  bool _isLoading = false;

  // Getters
  bool get isLoading => _isLoading;


  /// Tap on Next button for pass bgRemovedImage from home to result for further operations
  void tapOnNextButton(BuildContext context){
    // Start Loading
    updateLoading(true);

    // Controllers
    final resultController = Provider.of<ResultController>(context,listen: false);
    final homeController = Provider.of<HomeController>(context, listen:  false);

    // bgRemovedImage from Home Controller
    final bgRemovedImage = homeController.bgRemovedImage;

    // if home image is null then return
    if(bgRemovedImage == null){
      updateLoading(false);
      return;
    }

    // Assign from HomeController to Result Controller for further operations on that bgRemovedImage
    resultController.updateBgRemovedImage(bgRemovedImage);

    // Stop Loading
    updateLoading(false);

    // Move to Result Screen
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ResultScreen(),));
  }

  /// Update Loading
  void updateLoading(bool value){
    _isLoading = value;
    notifyListeners();
  }
}