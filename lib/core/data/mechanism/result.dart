
import 'package:dio/dio.dart';

import '../../util/app_constant.dart';

class CustomThrowable implements Exception {
  final int? code;
  final String message;

  CustomThrowable({this.code, required this.message});
}

class Result<T> {
  final T? data;
  final CustomThrowable? error;

  Result.success(this.data) : error = null;
  Result.failure(this.error) : data = null;

  // Check if the result is a success
  bool get isSuccess => error == null;

  // Check if the result is a failure
  bool get isFailure => error != null;
}

Future<Result<T>> getResult<T>(Future<T> Function() callback) async {
  try {
    T data = await callback();
    return Result.success(data);
  } on Exception catch (e) {
    switch (e.runtimeType) {
      case DioException error:
        final res = error.response;
        logger.e('Error : ${res?.statusCode} -> ${res?.statusMessage}');
        return Result.failure(
            CustomThrowable(
              code: res?.statusCode,
              message: res?.statusMessage ?? "Unknown error",
            )
        );
      default:
        logger.e('Error : ${e.toString()}');
        return Result.failure(
            CustomThrowable(
              message: e.toString(),
            )
        );
    }
  }
}
