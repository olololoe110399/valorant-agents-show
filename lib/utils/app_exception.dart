import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:valorant_agents_show/model/base_response.dart';
import 'package:dio/dio.dart';
import 'dart:io';

class AppException implements Exception {
  final String? message;
  final int? statusCode;
  final String? identifier;

  AppException({
    required this.message,
    required this.statusCode,
    required this.identifier,
  });
  @override
  String toString() {
    return 'statusCode=$statusCode\nmessage=$message\nidentifier=$identifier';
  }
}

class CacheFailureException extends Equatable implements AppException {
  @override
  String? get identifier => 'Cache failure exception';

  @override
  String? get message => 'Unable to save user';

  @override
  int? get statusCode => 100;

  @override
  List<Object?> get props => [message, statusCode, identifier];
}

extension HttpExceptionExtension on AppException {
  Left<AppException, BaseResponse> get toLeft =>
      Left<AppException, BaseResponse>(this);
}

Future<Either<AppException, BaseResponse>> handleException<T extends Object>(
    Future<BaseResponse<dynamic>> Function() handler,
    {String endpoint = ''}) async {
  try {
    final res = await handler();
    return Right(
      BaseResponse(
        status: res.status,
        data: res.data,
      ),
    );
  } catch (e) {
    String message = '';
    String identifier = '';
    int statusCode = 0;
    switch (e.runtimeType) {
      case SocketException:
        e as SocketException;
        message = 'Unable to connect to the server.';
        statusCode = 0;
        identifier = 'Socket Exception ${e.message}\n at  $endpoint';
        break;

      case DioException:
        e as DioException;
        message = 'Internal Error occured';
        statusCode = e.response?.data?['status'];
        identifier = 'DioException ${e.message} \nat  $endpoint';
        break;

      default:
        message = 'Unknown error occured';
        statusCode = 2;
        identifier = 'Unknown error ${e.toString()}\n at $endpoint';
    }
    return Left(
      AppException(
        message: message,
        statusCode: statusCode,
        identifier: identifier,
      ),
    );
  }
}
