import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart';
import 'package:sejun2_flutter_tdd/data/di/di_provider.dart';
import 'package:sejun2_flutter_tdd/data/entities/entity.dart';
import 'package:sejun2_flutter_tdd/data/mapper/token_mapper.dart';
import 'package:sejun2_flutter_tdd/data/repositories/authenticate_repository_impl.dart';
import 'package:sejun2_flutter_tdd/domain/models/model.dart';
import '../../mocks/mocks.mocks.dart';

void main(){

  setUpAll(() {
    DiProvider.provide();
  });

  tearDownAll(() {
    GetIt.instance.reset();
  });

  test('when login response ok, then return Result.success', () async{
    const email = 'test@test.com';
    const password = 'p@ssw0rd';

    final mockReqresApiService = GetIt.instance.get<ReqresApiService>();

    //read jsonfile
    final jsonFile = File('test/json_files/login_success_result.json');
    final jsonString = jsonFile.readAsStringSync();
    final responseData = jsonDecode(jsonString);

    when(mockReqresApiService.login(email, password)).thenAnswer((_) async {
      return Future.value(Response(
          requestOptions: RequestOptions(), data: responseData, statusCode: 201));
    });

    final repository = AuthenticateRepositoryImpl(reqresApiService: mockReqresApiService);

    final result = await repository.login(email, password);

    expect(result, Success<Token, String>(TokenMapper().asModel(const LoginResponse(token: 'TESTTOKEN'))));
  });


  test('when login response not ok, then return Failure', () async{
    const email = 'test@test.com';
    const password = 'p@ssw0rd';

    final mockReqresApiService = GetIt.instance.get<ReqresApiService>();

    when(mockReqresApiService.login(email, password)).thenAnswer((_) async {
      return Future.value(Response(
          requestOptions: RequestOptions(),
          data: {'error': 'error'},
          statusCode: 403,
          statusMessage: 'error', ));
    });

    final repository = AuthenticateRepositoryImpl(reqresApiService: mockReqresApiService);

    final result = await repository.login(email, password);

    expect(result, isA<Failure>());
  });
}