import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_constant.dart';
import 'api_exception.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;
  ApiClient() {
    baseOptions = BaseOptions(baseUrl: ApiConstant.mainUrl);
    dio = Dio(baseOptions);
  }

  //=========================GET==============================\\

  Future<Response> getRequest({
    required String path,
  }) async {
    try {
      debugPrint("🚀===============API REQUEST===============🚀");
      debugPrint("Request URL: ${baseOptions.baseUrl}");
      var response = await dio.get(path);
      debugPrint("👻==============API RESPONSE==============👻");
      debugPrint("Status Code: ${response.statusCode}");
      log("DATA: ${response.data}");
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(
          e.response!.data.toString(),
        );
        debugPrint(
          e.response!.headers.toString(),
        );
        debugPrint(
          e.response!.requestOptions.toString(),
        );
        throw ApiException(
          message: e.response!.statusMessage,
        );
      } else {
        debugPrint(
          e.requestOptions.toString(),
        );
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }

  //=========================POST==============================\\

  Future<Response> postRequest({required String path, dynamic body}) async {
    try {
      debugPrint("🚀===============API REQUEST===============🚀");
      debugPrint("Request URL: ${baseOptions.baseUrl + path}");
      debugPrint("Body $body");

      var response = await dio.post(path, data: body);
      debugPrint("👻==============API RESPONSE==============👻");
      debugPrint("Status Code: ${response.statusCode}");
      log("DATA: ${response.data}");
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(
          e.response!.data.toString(),
        );
        debugPrint(
          e.response!.headers.toString(),
        );
        debugPrint(
          e.response!.requestOptions.toString(),
        );
        throw ApiException(
          message: e.response!.statusMessage,
        );
      } else {
        debugPrint(
          e.requestOptions.toString(),
        );
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }
}
