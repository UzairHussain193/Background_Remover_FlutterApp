
import 'package:flutter/foundation.dart';
<<<<<<< HEAD
=======
import 'package:image_gallery_saver/image_gallery_saver.dart';
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
import 'package:image/image.dart' as img;



class ResultRepository{


  Future saveImageToGallery(Uint8List? bgRemovedImage) async{
    try{

      final decodedImage = img.decodeImage(bgRemovedImage!);

       final pngBytes = img.encodePng(decodedImage!);

      // save Image to Gallery
<<<<<<< HEAD
      // final savedImage = await ImageGallerySaver.saveImage(
      //     pngBytes,
      //     quality: 100,
      //     name: 'BG_Removed_${DateTime.now().microsecondsSinceEpoch}');
      //
      //
      // // check if image is saved or not
      // if(savedImage['isSuccess'] ?? false) return savedImage;
=======
      final savedImage = await ImageGallerySaver.saveImage(
          pngBytes,
          quality: 100,
          name: 'BG_Removed_${DateTime.now().microsecondsSinceEpoch}');


      // check if image is saved or not
      if(savedImage['isSuccess'] ?? false) return savedImage;
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137

      // if not then throw exception
      throw 'Unfortunately image is failed to save';

    } catch(e){
      rethrow;
    }
  }
}