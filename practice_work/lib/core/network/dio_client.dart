import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';
import 'package:practice_work/core/network/api_config.dart';
import 'package:practice_work/core/network/base_endPoint.dart';

abstract class DioClient {
  late final Dio baseApi;
  late final Dio commonApi;
  late final Dio practiceApi;

  DioClient({
    required this.baseApi,
    required this.commonApi,
    required this.practiceApi,
  });
}

@LazySingleton(as: DioClient)
class DioClientImpl implements DioClient {
  @override
  late final Dio baseApi;
  @override
  late final Dio commonApi;
  @override
  late final Dio practiceApi;

  DioClientImpl() {
    baseApi = Dio(
      BaseOptions(
        baseUrl: BaseEndpoints.baseUrl,
        receiveTimeout: HttpConfig.receivedTimeout,
        connectTimeout: HttpConfig.connectionTimeout,
      ),
    )..interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));

    commonApi = Dio(
      BaseOptions(
        baseUrl: BaseEndpoints.commonService,
        receiveTimeout: HttpConfig.receivedTimeout,
        connectTimeout: HttpConfig.connectionTimeout,
      ),
    )..interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));

    practiceApi = Dio(
      BaseOptions(
        baseUrl: BaseEndpoints.practiceBaseUrl,
        receiveTimeout: HttpConfig.receivedTimeout,
        connectTimeout: HttpConfig.connectionTimeout,
      ),
    )..interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
  }
}
