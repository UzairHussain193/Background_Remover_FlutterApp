
import 'package:flutter/foundation.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image/image.dart' as img;



class ResultRepository{


  Future saveImageToGallery(Uint8List? bgRemovedImage) async{
    try{

      final decodedImage = img.decodeImage(bgRemovedImage!);

       final pngBytes = img.encodePng(decodedImage!);

      // save Image to Gallery
      final savedImage = await ImageGallerySaver.saveImage(
          pngBytes,
          quality: 100,
          name: 'BG_Removed_${DateTime.now().microsecondsSinceEpoch}');


      // check if image is saved or not
      if(savedImage['isSuccess'] ?? false) return savedImage;

      // if not then throw exception
      throw 'Unfortunately image is failed to save';

    } catch(e){
      rethrow;
    }
  }
}