
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:smart_remove/features/authentication/controllers/login/login_controller.dart';
import 'package:smart_remove/features/authentication/controllers/onboarding/onboarding_controller.dart';
<<<<<<< HEAD
import 'package:smart_remove/features/authentication/controllers/register/register_controller.dart';
=======
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
import 'package:smart_remove/features/smart_remove/controllers/home/home_controller.dart';
import 'package:smart_remove/features/smart_remove/controllers/home/image_slider_controller.dart';
import 'package:smart_remove/features/smart_remove/controllers/image_compare/image_compare_controller.dart';
import 'package:smart_remove/features/smart_remove/controllers/result/result_controller.dart';

class HkProviders{
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (context) => ImageSliderController(),),
    ChangeNotifierProvider(create: (context) => ResultController(),),
    ChangeNotifierProvider(create: (context) => LoginController(),),
    ChangeNotifierProvider(create: (context) => HomeController(),),
    ChangeNotifierProvider(create: (context) => ImageCompareController(),),
    ChangeNotifierProvider(create: (context) => OnBoardingController(),),
<<<<<<< HEAD
    ChangeNotifierProvider(create: (context) => RegisterController(),),
=======
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
  ];
}