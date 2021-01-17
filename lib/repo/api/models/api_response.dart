import 'dart:convert';

ApiResponse apiResponseFromJson(String str) =>
    ApiResponse.fromJson(json.decode(str));

String apiResponseToJson(ApiResponse data) => json.encode(data.toJson());

class ApiResponse {
  ApiResponse({
    this.data,
    this.status,
    this.message,
    this.statusCode,
    this.pageCount,
  });

  dynamic data;
  String status;
  dynamic message;
  int statusCode;
  int pageCount;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
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
