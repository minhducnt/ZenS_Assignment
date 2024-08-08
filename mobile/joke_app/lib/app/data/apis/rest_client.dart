import 'package:flutter/foundation.dart';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:joke_app/app/data/di.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import 'rest_interceptor.dart';

/// Rest Client
class RestClient {
  RestClient() {
    initDioClient();
  }

  late Dio _dio;
  Dio get dioInstance => _dio;

  void initDioClient() {
    final timeOutDuration = $r.times.timeOut;

    /// Change this to your API URL
    const baseUrl = 'http://172.17.15.89:8080/';

    //* Dio
    _dio = Dio();
    _dio.options.baseUrl = baseUrl;
    _dio.options.followRedirects = false;
    _dio.options.connectTimeout = timeOutDuration;
    _dio.options.receiveTimeout = timeOutDuration;

    //* Interceptors
    _dio.interceptors
      ..clear()
      ..add(
        RestInterceptor(),
      )
      ..add(
        RetryInterceptor(
          dio: _dio,
          logPrint: (message) => $log.i(message),
          retries: 2,
          retryDelays: [$r.times.oneSeconds, $r.times.twoSeconds],
        ),
      )
      ..add(
        DioCacheInterceptor(
          options: CacheOptions(
            store: MemCacheStore(),
            hitCacheOnErrorExcept: [401, 403],
          ),
        ),
      );

    if (kDebugMode) {
      _dio.interceptors.add(TalkerDioLogger(talker: $log.talker));
    }
  }
}
