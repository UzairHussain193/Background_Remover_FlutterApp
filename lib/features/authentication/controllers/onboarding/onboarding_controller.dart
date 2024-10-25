

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_remove/features/authentication/screens/welcome/welcome.dart';

class OnBoardingController with ChangeNotifier{

  /// Variables
  // Setters
  PageController pageController = PageController();
  int _currentIndex = 0;

  // Getters
  int get currentIndex => _currentIndex;

  /// Update current index when page scroll
  void updatePageIndicator(index){
    _currentIndex = index;
    notifyListeners();
  }

  /// Update Current index of page
  void updateCurrentIndex(value){
    _currentIndex = value;
    notifyListeners();
  }

  /// Jump to specific dot  selected page
  void dotNavigationClick(index){
    _currentIndex = index;
    pageController.jumpToPage(index);
    //notifyListeners();
  }

  /// Update current index and jump to the next page
  void nextPage(BuildContext context) async{
    if(currentIndex == 2) {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setBool('IsFirstTime', false);
      if(context.mounted) Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const WelcomeScreen(),),(route) => false,);
    }else{
     updateCurrentIndex(currentIndex + 1);
     pageController.jumpToPage(currentIndex);
    }
  }

  /// Update current index and jump to the last page
  void skipPage(){
    updateCurrentIndex(2);
    pageController.jumpToPage(currentIndex);
  }
}