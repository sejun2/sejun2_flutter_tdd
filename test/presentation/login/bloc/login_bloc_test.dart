import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart';
import 'package:sejun2_flutter_tdd/data/repositories/authenticate_repository_impl.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/authenticate_repository.dart';
import 'package:sejun2_flutter_tdd/presentation/login/bloc/login_bloc.dart';
import 'package:sejun2_flutter_tdd/presentation/login/bloc/login_state.dart';

import '../../../mocks/mocks.mocks.dart';

void main() {
  String email = 'email@email.com';
  String password = 'password';

  late ReqresApiService mockReqresApiService;
  late AuthenticateRepository authenticateRepository;

  blocTest<LoginBloc, LoginState>(
    'when login success, then emit LoginStatus.success',
    setUp: () {
      mockReqresApiService = MockReqresApiService();

      final file = File('test/json_files/login_success_result.json');
      final data = file.readAsStringSync();
      final jsonData = jsonDecode(data);

      when(mockReqresApiService.login(email, password)).thenAnswer((_) async {
        return Future.value(Response(
            requestOptions: RequestOptions(), data: jsonData, statusCode: 201));
      });

      authenticateRepository =
          AuthenticateRepositoryImpl(reqresApiService: mockReqresApiService);
    },
    build: () => LoginBloc(authenticateRepository: authenticateRepository),
    act: (bloc) async {
      await bloc.login(email, password);
    },
    verify: (_) {
      verify(mockReqresApiService.login(email, password));
    },
    expect: () => <LoginState>[
      LoginState().copyWith(status: LoginStatus.loading),
      LoginState().copyWith(status: LoginStatus.success),
    ],
  );

  blocTest<LoginBloc, LoginState>(
    'when login fail, then emit LoginStatus.failure',
    setUp: () {
      mockReqresApiService = MockReqresApiService();

      when(mockReqresApiService.login(email, password)).thenAnswer((_) async {
        return Future.value(Response(
            requestOptions: RequestOptions(), data: {}, statusCode: 403));
      });

      authenticateRepository =
          AuthenticateRepositoryImpl(reqresApiService: mockReqresApiService);
    },
    build: () => LoginBloc(authenticateRepository: authenticateRepository),
    act: (bloc) async {
      await bloc.login(email, password);
    },
    verify: (_) {
      verify(mockReqresApiService.login(email, password));
    },
    expect: () => <LoginState>[
      LoginState().copyWith(status: LoginStatus.loading),
      LoginState().copyWith(status: LoginStatus.failure),
    ],
  );
}
