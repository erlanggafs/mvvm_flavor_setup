import 'package:json_annotation/json_annotation.dart';

part 'request_response.g.dart';

@JsonSerializable()
class RequestResponse {
  String? status;
  String? message;

  RequestResponse({this.status, this.message});

  factory RequestResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RequestResponseToJson(this);
}
