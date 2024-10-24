

abstract class HkBaseApiServices {

  Future<dynamic> getApi(String url);

  Future<dynamic> postApi({required String url, required dynamic data, dynamic headers});

}