// Mocks generated by Mockito 5.3.2 from annotations
// in sejun2_flutter_tdd/data/di/service_module.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dio/dio.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart'
    as _i3;

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

/// A class which mocks [ReqresApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockReqresApiService extends _i1.Mock implements _i3.ReqresApiService {
  @override
  _i4.Future<_i2.Response<dynamic>> login(
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
            _i4.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
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
            _i4.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #login,
            [
              email,
              password,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Response<dynamic>>);
  @override
  _i4.Future<_i2.Response<dynamic>> fetchUsers({required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchUsers,
          [],
          {#page: page},
        ),
        returnValue:
            _i4.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #fetchUsers,
            [],
            {#page: page},
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #fetchUsers,
            [],
            {#page: page},
          ),
        )),
      ) as _i4.Future<_i2.Response<dynamic>>);
}
