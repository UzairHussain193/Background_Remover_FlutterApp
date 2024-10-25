import 'dart:convert';

import 'package:http/http.dart';
import 'package:smart_remove/features/smart_remove/models/exception%20model/bad_request_model.dart';

class HkHttpException implements Exception {
  final String message;

  HkHttpException(this.message);

  @override
  String toString() => message;

  factory HkHttpException.fromStatusCode(Response response) {
    switch (response.statusCode) {
      case 400:
        Map<String, dynamic> body = jsonDecode(response.body);
        BadRequestModel errorModel = BadRequestModel.fromJson(body);
        String code = errorModel.errors![0].code ?? '';
        if(errorModel.errors![0].title != null && errorModel.errors![0].title != ''){
          return HkHttpException.fromApiCode(code);
        }
        return HkHttpException('Bad request. Please check your request parameters.');
      case 401:
        return HkHttpException('Unauthorized. Please authenticate and try again.');
      case 402:
        return HkHttpException('Insufficient credits');

      case 403:
        return HkHttpException('Missing API Key');
      case 404:
        return HkHttpException('Not found. The requested resource could not be found.');
      case 405:
        return HkHttpException('Method not allowed. Please use a different HTTP method.');
      case 408:
        return HkHttpException('Request timeout. Please try again later.');
      case 429:
        return HkHttpException('Rate limit exceeded.');
      case 500:
        return HkHttpException('Internal server error occurred. Please try again later.');
      case 502:
        return HkHttpException('Bad gateway. Please try again later.');
      case 503:
        return HkHttpException('Service unavailable. Please try again later.');
      case 504:
        return HkHttpException('Gateway timeout. Please try again later.');
      default:
        return HkHttpException('HTTP error: ${response.statusCode}. Please try again.');
    }
  }

  factory HkHttpException.fromApiCode(String code){
    switch(code){
      case 'unknown_foreground':
        return HkHttpException('The object is not clear. Please try another image');
      case  'multiple_sources':
        return HkHttpException('Multiple image sources given. Please try one of them');
      case 'missing_source':
        return HkHttpException('No image given');
      case 'invalid_image_url':
        return HkHttpException('Invalid image_url: Please provide a valid URL.');
      case 'invalid_format':
        return HkHttpException('Invalid format parameter given');
      case 'invalid_roi':
        return HkHttpException('Invalid roi parameter given');
      case 'invalid_semitransparency':
        return HkHttpException('Invalid semitransparency parameter given');
      case 'invalid_crop_margin':
        return HkHttpException('Invalid crop_margin parameter given');
      case 'invalid_scale':
        return HkHttpException('Invalid scale parameter given');
      case 'invalid_position':
        return HkHttpException('Invalid position parameter give');
      case 'invalid_bg_color':
        return HkHttpException('Invalid bg_color parameter given');
      case 'invalid_bg_image_url':
        return HkHttpException('Invalid bg_image_url: Please provide a valid URL.');
      case 'multiple_bg_sources':
        return HkHttpException('Multiple background sources given. Please try one of them');
      case 'failed_bg_download':
        return HkHttpException('Failed to download background image from given image_url');
      case 'failed_image_download':
        return HkHttpException('Failed to download image from given image_url');
      case 'file_too_large':
        return HkHttpException('File too large. File exceeds limit of 22MB');
      case 'invalid_file_type':
        return HkHttpException('Please try jpg/png image type');
      case 'invalid_dimensions':
        return HkHttpException('Failed to read image dimensions');
      case 'resolution_too_high':
        return HkHttpException('Input image has 60 megapixels, maximum supported input resolution is 50 megapixels');
      case 'roi_exceeds_bounds':
        return HkHttpException('The given roi parameter defines a region that exceeds the image bounds');
      case 'roi_region_empty':
        return HkHttpException('The given roi parameter defines an empty region');
        default:
          return HkHttpException('Something went wrong, Please try again.');
    }
  }


  factory HkHttpException.fromMessage(String errorMessage) {
    switch (errorMessage.toLowerCase()) {
      case 'network error':
        return HkHttpException('Network error. Please check your internet connection and try again.');
      case 'server error':
        return HkHttpException('Server error. Please try again later.');
      case 'authentication failed':
        return HkHttpException('Authentication failed. Please authenticate and try again.');
      case 'invalid token':
        return HkHttpException('Invalid token. Please log in again.');
      case 'user not found':
        return HkHttpException('User not found. Please check your credentials.');
      case 'session expired':
        return HkHttpException('Session expired. Please log in again.');
      case 'unexpected server response':
        return HkHttpException('Unexpected server response. Please try again later.');
      case 'unable to connect to server':
        return HkHttpException('Unable to connect to server. Please try again later.');
    // Add more cases as needed...
      default:
        return HkHttpException(errorMessage); // Default to the provided error message
    }
  }
}