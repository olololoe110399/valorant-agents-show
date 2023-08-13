import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:valorant_agents_show/utils/app_exception.dart';
part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  final int status;
  final T data;

  BaseResponse({
    required this.status,
    required this.data,
  });

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseToJson(this, toJsonT);
}

extension ResponseExtension on BaseResponse {
  Right<AppException, BaseResponse> get toRight => Right(this);
}
