// import 'dart:convert';

class ApiResponseList {
  ApiResponseList({
    this.data,
    this.status,
    this.message,
    this.statusCode,
    this.pageCount,
  });

  List<dynamic> data;
  String status;
  dynamic message;
  int statusCode;
  int pageCount;

  factory ApiResponseList.fromJson(Map<String, dynamic> json) => ApiResponseList(
        data: json["data"],
        status: json["status"],
        message: json["message"],
        statusCode: json["statusCode"],
        pageCount: json.containsKey("pageCount") ? json['pageCount'] : 0,
      );

  Map<String, dynamic> toJson() => {
        "data": data,
        "status": status,
        "message": message,
        "statusCode": statusCode,
        "pageCount": pageCount,
      };
}
