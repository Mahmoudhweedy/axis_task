import 'package:dio/dio.dart';

import 'api_constants.dart';
import 'api_error_model.dart';

enum DataSource {
  noContent,
  badRequest,
  forbidden,
  unauthorized,
  notFound,
  internalServerError,
  connectTimeOut,
  cancel,
  recieveTimeout,
  sendTimeout,
  cachError,
  noInternetConnection,
  // apiLogicError,
  defalutError
}

class ResponseCode {
  static const int success = 200; // success with data
  static const int noContent = 204; // success with no data (no content)
  static const int badRequest = 400; // failure, API rejected request
  static const int unauthorized = 401; // failure, user is not authorised
  static const int forbidden = 403; //  failure, API rejected request
  static const int internalServerError = 500; // failure, crash in server side
  static const int notFound = 404; // failure, not found
  static const int apiLogicError = 422; // API , lOGIC ERROR

  // local status code
  static const int connectTimeOut = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int defalutError = -7;
}

class ResponseMessage {
  static const String noContent =
      ApiErrors.noContent; // success with no data (no content)
  static const String badRequestError =
      ApiErrors.badRequestError; // failure, API rejected request
  static const String unauthorizedError =
      ApiErrors.unauthorizedError; // failure, user is not authorised
  static const String forbiddenError =
      ApiErrors.forbiddenError; //  failure, API rejected request
  static const String internalServerError =
      ApiErrors.internalServerError; // failure, crash in server side
  static const String notFoundError =
      ApiErrors.notFoundError; // failure, crash in server side

  // local status code
  static String timeoutError = ApiErrors.timeoutError;
  static String defaultError = ApiErrors.defaultError;
  static String receiveTimeout = ApiErrors.timeoutError;
  static String sendTimeout = ApiErrors.timeoutError;
  static String cacheError = ApiErrors.cacheError;
  static String noInternetConnection = ApiErrors.noInternetError;
  static String defalutError = ApiErrors.defaultError;
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {
      case DataSource.noContent:
        return ApiErrorModel(
            code: ResponseCode.noContent, message: ResponseMessage.noContent);
      case DataSource.badRequest:
        return ApiErrorModel(
            code: ResponseCode.badRequest,
            message: ResponseMessage.badRequestError);
      case DataSource.forbidden:
        return ApiErrorModel(
            code: ResponseCode.forbidden,
            message: ResponseMessage.forbiddenError);
      case DataSource.unauthorized:
        return ApiErrorModel(
            code: ResponseCode.unauthorized,
            message: ResponseMessage.unauthorizedError);
      case DataSource.notFound:
        return ApiErrorModel(
            code: ResponseCode.notFound,
            message: ResponseMessage.notFoundError);
      case DataSource.internalServerError:
        return ApiErrorModel(
            code: ResponseCode.internalServerError,
            message: ResponseMessage.internalServerError);
      case DataSource.connectTimeOut:
        return ApiErrorModel(
            code: ResponseCode.connectTimeOut,
            message: ResponseMessage.timeoutError);
      case DataSource.cancel:
        return ApiErrorModel(
            code: ResponseCode.cancel, message: ResponseMessage.defalutError);
      case DataSource.recieveTimeout:
        return ApiErrorModel(
            code: ResponseCode.receiveTimeout,
            message: ResponseMessage.receiveTimeout);
      case DataSource.sendTimeout:
        return ApiErrorModel(
            code: ResponseCode.sendTimeout,
            message: ResponseMessage.sendTimeout);
      case DataSource.cachError:
        return ApiErrorModel(
            code: ResponseCode.cacheError, message: ResponseMessage.cacheError);
      case DataSource.noInternetConnection:
        return ApiErrorModel(
            code: ResponseCode.noInternetConnection,
            message: ResponseMessage.noInternetConnection);
      case DataSource.defalutError:
        return ApiErrorModel(
            code: ResponseCode.defalutError,
            message: ResponseMessage.defalutError);
    }
  }
}

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      apiErrorModel = _handleError(error);
    } else {
      // default error
      apiErrorModel = DataSource.defalutError.getFailure();
    }
  }
}

ApiErrorModel _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.connectTimeOut.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.sendTimeout.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.recieveTimeout.getFailure();
    case DioExceptionType.badResponse:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        Map<String, dynamic> errorJson = {
          'errorMessage': error.response?.statusMessage,
          'errorCode': error.response?.statusCode,
        };
        return ApiErrorModel.fromJson(errorJson);
      } else {
        return DataSource.defalutError.getFailure();
      }
    case DioExceptionType.unknown:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.defalutError.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.cancel.getFailure();
    case DioExceptionType.connectionError:
      return DataSource.defalutError.getFailure();
    case DioExceptionType.badCertificate:
      return DataSource.defalutError.getFailure();
  }
}

class ApiInternalStatus {
  static const int success = 0;
  static const int failure = 1;
}
