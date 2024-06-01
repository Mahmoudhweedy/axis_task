import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable(createToJson: false)
class ApiErrorModel {
  @JsonKey(name: 'errorMessage')
  final String? message;
  @JsonKey(name: 'errorCode')
  final int? code;

  ApiErrorModel({
    required this.message,
    this.code,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
}
