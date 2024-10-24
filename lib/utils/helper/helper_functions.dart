import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/features/smart_remove/controllers/result/result_controller.dart';
import 'package:smart_remove/utils/constants/sizes.dart';

import '../../common/widgets/bottom_sheet/choose_image_source_bottom_sheet.dart';

class HkHelperFunctions {
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static Future<bool> isPermissionGranted(Permission permission) async {
    final PermissionStatus status = await permission.status;

    if (status == PermissionStatus.granted) {
      return true;
    } else {
      final request = await permission.request();
      if (request == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  static errorSnackBar(BuildContext context, {required title, message = ''}) {
    final snackBar = SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: title,
          message: message,
          contentType: ContentType.failure,
        ));

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static helpSnackBar(BuildContext context, {required title, message = ''}) {
    final snackBar = SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: title,
          message: message,
          contentType: ContentType.help,
        ));

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static successSnackBar(BuildContext context, {required title, message = ''}) {
    final snackBar = SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: title,
          message: message,
          contentType: ContentType.success,
        ));

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static warningSnackBar(BuildContext context, {required title, message = ''}) {
    final snackBar = SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: title,
          message: message,
          contentType: ContentType.warning,
        ));

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static Future<ImageSource?> showImageSourcePicker(BuildContext context) async {
    ImageSource? imageSource;
    await showModalBottomSheet(
      context: context,
      builder: (context) {
        return HkChooseImageSourceBottomSheet(
          galleryOnPressed: () {
            imageSource = ImageSource.gallery;
            Navigator.pop(context);
          },
          cameraOnPressed: () {
            imageSource = ImageSource.camera;
            Navigator.pop(context);
          },
        );
      },
    );

    return (imageSource != null) ? imageSource : null;
  }

  static void showColorPicker(BuildContext context, {required onColorChanged, required onGotItTap}) {
    showDialog(
      context: context,
      builder: (context) {
        final controller = Provider.of<ResultController>(context, listen: false);
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(HkSizes.borderRadius * 2)),
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerAreaHeightPercent: 0.6,
              pickerColor: controller.pickerColor,
              onColorChanged: onColorChanged,
              pickerAreaBorderRadius: BorderRadius.circular(HkSizes.borderRadius),
            ),
          ),
          actions: [
            TextButton(
                onPressed: onGotItTap,
                child: const Text('Got it'))
          ],
        );
      },
    );
  }
}
