import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:sejun2_flutter_tdd/data/di/di_provider.dart';
import 'package:sejun2_flutter_tdd/data/di/repository_module.mocks.dart';
import 'package:sejun2_flutter_tdd/data/entities/entity.dart';
import 'package:sejun2_flutter_tdd/domain/models/model.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/list_repository.dart';
import 'package:sejun2_flutter_tdd/presentation/list/bloc/list_bloc.dart';
import 'package:sejun2_flutter_tdd/presentation/list/bloc/list_state.dart';

void main() {
  setUpAll(() {
    DiProvider.provide();
  });

  tearDownAll(() {
    GetIt.instance.reset();
  });

  blocTest<ListBloc, ListState>('when fetch user success, emit loaded status',
      setUp: () {
        final mockListRepository = GetIt.instance.get<ListRepository>();
        when(mockListRepository.fetchUsers(page: 1)).thenAnswer((_) async {
          return Future.value(const Result.success([
            User(
              id: 1,
              email: 'test@test.com',
              avatar: 'https://test.com',
              firstName: 'first',
              lastName: 'last',
            )
          ]));
        });
      },
      build: () {
        return ListBloc(listRepository: GetIt.instance.get<ListRepository>());
      },
      act: (bloc) async {
        bloc.fetchUsers(page: 1);
      },
      expect: () => [
            ListState(status: ListStatus.loading),
            ListState(status: ListStatus.loaded, users: const [
              User(
                id: 1,
                email: 'test@test.com',
                avatar: 'https://test.com',
                firstName: 'first',
                lastName: 'last',
              )
            ])
          ]);

  blocTest<ListBloc, ListState>('when fetch user failed, emit error status',
      setUp: () {
        final mockListRepository = GetIt.instance.get<ListRepository>();
        when(mockListRepository.fetchUsers(page: 1)).thenAnswer((_) async {
          return Future.value(const Result.failure('error'));
        });
      },
      build: () {
        return ListBloc(listRepository: GetIt.instance.get<ListRepository>());
      },
      act: (bloc) async {
        bloc.fetchUsers(page: 1);
      },
      expect: () => [
        ListState(status: ListStatus.loading),
        ListState(status: ListStatus.error),
      ]);
}
