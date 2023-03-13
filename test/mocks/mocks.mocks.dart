// Mocks generated by Mockito 5.3.2 from annotations
// in sejun2_flutter_tdd/test/mocks/mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dio/dio.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart'
    as _i4;
import 'package:sejun2_flutter_tdd/data/entities/entity.dart' as _i3;
import 'package:sejun2_flutter_tdd/domain/models/model.dart' as _i9;
import 'package:sejun2_flutter_tdd/domain/models/token.dart' as _i7;
import 'package:sejun2_flutter_tdd/domain/repositories/authenticate_repository.dart'
    as _i6;
import 'package:sejun2_flutter_tdd/domain/repositories/list_repository.dart'
    as _i8;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponse_0<T> extends _i1.SmartFake implements _i2.Response<T> {
  _FakeResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResult_1<T, E> extends _i1.SmartFake implements _i3.Result<T, E> {
  _FakeResult_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ReqresApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockReqresApiService extends _i1.Mock implements _i4.ReqresApiService {
  @override
  _i5.Future<_i2.Response<dynamic>> login(
    String? email,
    String? password,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [
            email,
            password,
          ],
        ),
        returnValue:
            _i5.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #login,
            [
              email,
              password,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #login,
            [
              email,
              password,
            ],
          ),
        )),
      ) as _i5.Future<_i2.Response<dynamic>>);
  @override
  _i5.Future<_i2.Response<dynamic>> fetchUsers({required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchUsers,
          [],
          {#page: page},
        ),
        returnValue:
            _i5.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #fetchUsers,
            [],
            {#page: page},
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #fetchUsers,
            [],
            {#page: page},
          ),
        )),
      ) as _i5.Future<_i2.Response<dynamic>>);
}

/// A class which mocks [AuthenticateRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthenticateRepository extends _i1.Mock
    implements _i6.AuthenticateRepository {
  @override
  _i5.Future<_i3.Result<_i7.Token, String>> login(
    String? email,
    String? password,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [
            email,
            password,
          ],
        ),
        returnValue: _i5.Future<_i3.Result<_i7.Token, String>>.value(
            _FakeResult_1<_i7.Token, String>(
          this,
          Invocation.method(
            #login,
            [
              email,
              password,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.Result<_i7.Token, String>>.value(
                _FakeResult_1<_i7.Token, String>(
          this,
          Invocation.method(
            #login,
            [
              email,
              password,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Result<_i7.Token, String>>);
}

/// A class which mocks [ListRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockListRepository extends _i1.Mock implements _i8.ListRepository {
  @override
  _i5.Future<_i3.Result<List<_i9.User>, String>> fetchUsers(
          {required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchUsers,
          [],
          {#page: page},
        ),
        returnValue: _i5.Future<_i3.Result<List<_i9.User>, String>>.value(
            _FakeResult_1<List<_i9.User>, String>(
          this,
          Invocation.method(
            #fetchUsers,
            [],
            {#page: page},
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.Result<List<_i9.User>, String>>.value(
                _FakeResult_1<List<_i9.User>, String>(
          this,
          Invocation.method(
            #fetchUsers,
            [],
            {#page: page},
          ),
        )),
      ) as _i5.Future<_i3.Result<List<_i9.User>, String>>);
}
