import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart';
import 'package:sejun2_flutter_tdd/data/di/di_provider.dart';
import 'package:sejun2_flutter_tdd/data/entities/result.dart';
import 'package:sejun2_flutter_tdd/data/repositories/repository.dart';

void main() {
  setUpAll(() {
    DiProvider.provide();
  });

  tearDownAll(() {
    GetIt.instance.reset();
  });

  test('when fetch user list success, then return User model  ', () async {
    final mockReqresApiService = GetIt.instance.get<ReqresApiService>();

    //read jsonfile
    final jsonFile = File('test/json_files/user_list_success_result.json');
    final jsonString = jsonFile.readAsStringSync();
    final responseData = jsonDecode(jsonString);

    when(mockReqresApiService.fetchUsers(page: 1)).thenAnswer((_) async {
      return Future.value(Response(
          requestOptions: RequestOptions(),
          data: responseData,
          statusCode: 200));
    });

    final repository =
        ListRepositoryImpl(reqresApiService: mockReqresApiService);

    final result = await repository.fetchUsers(page: 1);

    expect(result, isA<Success>());
  });

  test('when fetch user list failed, then return String error message', () async {
    final mockReqresApiService = GetIt.instance.get<ReqresApiService>();

    when(mockReqresApiService.fetchUsers(page: 1)).thenAnswer((_) async {
      return Future.value(Response(
          requestOptions: RequestOptions(),
          data: null,
          statusCode: 404));
    });

    final repository =
        ListRepositoryImpl(reqresApiService: mockReqresApiService);

    final result = await repository.fetchUsers(page: 1);

    expect(result, isA<Failure>());
  });
}
