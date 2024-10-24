import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:smart_remove/utils/constants/api_urls.dart';
import 'package:smart_remove/utils/exceptions/client_exception.dart';
import 'package:smart_remove/utils/exceptions/format_exceptions.dart';
import 'package:smart_remove/utils/exceptions/http_exceptions.dart';
import 'package:smart_remove/utils/exceptions/platform_exceptions.dart';
import 'package:smart_remove/utils/exceptions/timeout_exceptions.dart';

import '../../../utils/exceptions/socket_exceptions.dart';
import 'base_api_services.dart';

class HkApiServices implements HkBaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    try {
      Uri uri = Uri.parse(url);
      http.Response response = await http.get(uri);

      if (response.statusCode == 200) {

        return response;

      } else {

        throw HkHttpException.fromStatusCode(response);
      }
    } on PlatformException catch (e) {
      throw HkPlatformException(e.code).message;
    } on FormatException catch (e) {
      throw HkFormatException.fromCode(e.message);
    } on SocketException catch (e) {
      throw HkSocketException.fromOsError(e.osError!);
    } on http.ClientException catch (e) {
      throw HkClientException.handle(e.message);
    } on TimeoutException catch (e) {
      throw HkTimeoutException.fromDuration(e.duration!);
    } catch (e) {

      throw 'Something went wrong. Please try again';
    }
  }

  @override
  Future<dynamic> postApi({required String url, required dynamic data, dynamic headers}) async {
    try {
      Uri uri = Uri.parse(url);
      String apikey = HkApiUrls.apiKey;

      http.Response response = await http.post(uri, body: data, headers: {
        'X-API-Key': apikey,
      });

      if (response.statusCode == 200) {
        return response;
      } else {
        throw HkHttpException.fromStatusCode(response);
      }
    } on PlatformException catch (e) {
      throw HkPlatformException(e.code).message;
    } on FormatException catch (e) {
      throw HkFormatException.fromCode(e.message);
    } on SocketException catch (e) {
      throw HkSocketException.fromOsError(e.osError!);
    } on http.ClientException catch (e) {
      throw HkClientException.handle(e.message);
    } on TimeoutException catch (e) {
      throw HkTimeoutException.fromDuration(e.duration!);
    } catch (e) {

      rethrow;
    }
  }
}
