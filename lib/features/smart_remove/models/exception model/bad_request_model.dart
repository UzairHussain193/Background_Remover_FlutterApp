/// errors : [{"code":"multiple_sources","title":"Multiple image sources given: Please provide either the image_url, image_file or image_file_b64 parameter."}]
library;

class BadRequestModel {
  String? title;
  BadRequestModel({
      List<Errors>? errors,}){
    _errors = errors;
}

  BadRequestModel.fromJson(Map<String, dynamic> json) {
    if (json['errors'] != null) {
      _errors = [];
      json['errors'].forEach((v) {
        _errors?.add(Errors.fromJson(v));
      });
    }
  }
  List<Errors>? _errors;
BadRequestModel copyWith({  List<Errors>? errors,
}) => BadRequestModel(  errors: errors ?? _errors,
);
  List<Errors>? get errors => _errors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_errors != null) {
      map['errors'] = _errors?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// code : "multiple_sources"
/// title : "Multiple image sources given: Please provide either the image_url, image_file or image_file_b64 parameter."

class Errors {
  Errors({
      String? code, 
      String? title,}){
    _code = code;
    _title = title;
}

  Errors.fromJson(dynamic json) {
    _code = json['code'];
    _title = json['title'];
  }
  String? _code;
  String? _title;
Errors copyWith({  String? code,
  String? title,
}) => Errors(  code: code ?? _code,
  title: title ?? _title,
);
  String? get code => _code;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['title'] = _title;
    return map;
  }

}