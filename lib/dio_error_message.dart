// import 'package:dio/dio.dart';
//
// String handleDioException(Object e) {
//   if (e is DioException) {
//     return dioErrorMessage(e);
//   } else {
//     return Strings.responseError;
//   }
// }
//
// String dioErrorMessage(DioException e) {
//   String errorMessage = Strings.responseError;
//
//   if (e.type == DioExceptionType.connectionTimeout) {
//     errorMessage = Strings.connectionTimeout;
//   } else if (e.type == DioExceptionType.sendTimeout) {
//     errorMessage = Strings.sendTimeout;
//   } else if (e.type == DioExceptionType.receiveTimeout) {
//     errorMessage = Strings.receiveTimeout;
//   } else if (e.type == DioExceptionType.badResponse) {
//     if (e.response != null && e.response!.statusCode != null) {
//       switch (e.response!.statusCode) {
//         case 400:
//           errorMessage = Strings.badRequest;
//           break;
//         case 401:
//           errorMessage = Strings.unAuthorized;
//           break;
//         case 404:
//           errorMessage = Strings.notFoundError;
//           break;
//         case 500:
//           errorMessage = Strings.serverError;
//           break;
//         default:
//           errorMessage = '${Strings.statusError} ${e.response?.statusCode}';
//
//           break;
//       }
//     }
//   } else if (e.type == DioExceptionType.cancel) {
//     errorMessage = Strings.requestCancelled;
//   } else if (e.type == DioExceptionType.unknown) {
//     errorMessage = Strings.networkError;
//   } else if (e.type == DioExceptionType.connectionError) {
//     errorMessage = Strings.noInternetConnection;
//   }
//
//   return errorMessage;
// }
