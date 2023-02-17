/// status : true
/// data : ["pants six","pants five","pants four","pants three","pants two","pants one"]
/// message : "Product search list has been retrieved."
/// code : 200

class Apimodel {
  Apimodel({
      bool? status, 
      List<String>? data, 
      String? message, 
      int? code,}){
    _status = status;
    _data = data;
    _message = message;
    _code = code;
}

  Apimodel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? json['data'].cast<String>() : [];
    _message = json['message'];
    _code = json['code'];
  }
  bool? _status;
  List<String>? _data;
  String? _message;
  int? _code;
Apimodel copyWith({  bool? status,
  List<String>? data,
  String? message,
  int? code,
}) => Apimodel(  status: status ?? _status,
  data: data ?? _data,
  message: message ?? _message,
  code: code ?? _code,
);
  bool? get status => _status;
  List<String>? get data => _data;
  String? get message => _message;
  int? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['data'] = _data;
    map['message'] = _message;
    map['code'] = _code;
    return map;
  }

  static void run(Null Function() param0) {}

}