import 'package:auto_route/auto_route.dart';
import 'package:nisha1/src/core/constants/app_constants.dart';
import 'package:nisha1/src/core/di/register_modules.dart';
import 'package:nisha1/src/core/services/api/api_endpoints.dart';
import 'package:dio/dio.dart';
import 'package:nisha1/src/core/di/injection.dart';
import 'package:nisha1/src/core/helpers/storage_helper.dart';
import 'package:nisha1/src/core/routes/app_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../../app/presentation/view/app.dart';

/// A custom Dio Interceptor for handling requests and responses in an blablow_rider application.
///
/// This interceptor provides functionalities for handling errors, modifying request options,
/// and intercepting responses. It is primarily used for managing authentication tokens,
/// data serialization, and error handling across network requests.
class CustomInterceptors implements Interceptor {
  CustomInterceptors();

  final storageHelper = getIt<StorageHelper>();
  final router = getIt<AppRouter>();

  @override
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response != null && err.response!.statusCode == 401) {
      try {
        final _refreshToken = await storageHelper.getRefreshToken();
        final _dio =
            Dio(BaseOptions(baseUrl: dotenv.env['BASE_URL']!))
              ..interceptors.addAll([
                TalkerDioLogger(
                  talker: talker,
                  addonId: 'nisha1',
                  settings: TalkerDioLoggerSettings(
                    printRequestHeaders: true,
                    printResponseHeaders: true,
                    printResponseMessage: true,
                    errorPen: AnsiPen()..red(),
                    printRequestData: true,
                    printResponseData: true,
                    responsePen: AnsiPen()..green(),
                  ),
                ),
              ])
              ..httpClientAdapter = CustomHttpClientAdapter();

        final response = await _dio.post(
          ApiEndPoints.refreshToken,
          data: {'refresh': '$_refreshToken'},
        );
        final accessToken = response.data['access'] as String;
        await storageHelper.setAccessToken(access: accessToken);

        handler.resolve(
          await _dio.request(
            err.requestOptions.path,
            queryParameters: err.requestOptions.queryParameters,
            data: err.requestOptions.data,
            options: Options(
              method: err.requestOptions.method,
              headers:
                  _dio.options.headers..addAll({
                    'Authorization': 'Bearer ${response.data?['access']}',
                  }),
            ),
          ),
        );
      } on DioException catch (e) {
        if (e.response?.statusCode == 401) {
        }
      }
    }

    return handler.next(err);
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final tokenOption = await storageHelper.getToken();
    final token = tokenOption.fold(() => '', (a) => a);
    final headerResponse = options.headers.keys;
    options.headers.addAll({
      if (!headerResponse.contains(AppConstants.unAuthorized))
        'Authorization': 'Bearer $token',
    });

    final data = options.data;
    if (data is Map<String, dynamic>) {
      options.data = {...data};
    } else {
      options.data = data;
    }

    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    return handler.next(response);
  }
}
