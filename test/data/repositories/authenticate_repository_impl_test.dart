import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart';
import 'package:sejun2_flutter_tdd/data/repositories/authenticate_repository_impl.dart';
import 'package:sejun2_flutter_tdd/domain/entities/login_response.dart';
import 'package:sejun2_flutter_tdd/domain/entities/result.dart';

import 'authenticate_repository_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ReqresApiService>()])
void main(){
  test('when login response ok, then return Result.success', () async{
    const email = 'test@test.com';
    const password = 'p@ssw0rd';

    final mockReqresApiService = MockReqresApiService();

    final resultData = json.decode('{"token": "TESTTOKEN"}');

    when(mockReqresApiService.login(email, password)).thenAnswer((_) async {
      return Future.value(Response(
          requestOptions: RequestOptions(), data: resultData, statusCode: 201));
    });

    final repository = AuthenticateRepositoryImpl(reqresApiService: mockReqresApiService);

    final result = await repository.login(email, password);

    expect(result, const Result<LoginResponse, String>.success(LoginResponse(token: 'TESTTOKEN')));
  });


  test('when login response not ok, then return Failure', () async{
    const email = 'test@test.com';
    const password = 'p@ssw0rd';

    final mockReqresApiService = MockReqresApiService();

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