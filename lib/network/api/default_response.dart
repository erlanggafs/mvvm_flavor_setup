import 'package:json_annotation/json_annotation.dart';

part 'default_response.g.dart';

@JsonSerializable()
class DefaultResponse {
  String status = "";
  String message = "";

  DefaultResponse(this.status, this.message);

  factory DefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$DefaultResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DefaultResponseToJson(this);
}
