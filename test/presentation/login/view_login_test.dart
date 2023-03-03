import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/authenticate_repository.dart';
import 'package:sejun2_flutter_tdd/presentation/login/bloc/login_bloc.dart';
import 'package:sejun2_flutter_tdd/presentation/login/bloc/login_state.dart';
import 'package:sejun2_flutter_tdd/presentation/login/view_login.dart';

import '../../mocks/mocks.mocks.dart';

void main() {
  AuthenticateRepository authenticateRepository = MockAuthenticateRepository();

  group('ui validation', () {
    testWidgets(
        'when login status is initial, then show email TextFormField, password TextFormBuild, submit button',
        (tester) async {
      final targetView = MaterialApp(
        home: BlocProvider(
          create: (context) =>
              LoginBloc(authenticateRepository: authenticateRepository),
          child: const ViewLogin(),
        ),
      );

      await tester.pumpWidget(targetView);
      await tester.pumpAndSettle(const Duration(seconds: 1));

      expect(find.byType(TextFormField), findsNWidgets(2));
      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsNothing);
    });

    testWidgets(
        'when login status is loading, then show CircularProgressIndicator',
        (tester) async {
      final targetView = MaterialApp(
        home: BlocProvider(
          create: (context) => LoginBloc(
              authenticateRepository: authenticateRepository,
              loginState: LoginState(status: LoginStatus.loading)),
          child: const ViewLogin(),
        ),
      );

      await tester.pumpWidget(targetView);
      // pumpAndSettle() is for waiting for the animation to complete.
      // But because the CircularProgressIndicator is an animation that will not be visible until the animation has completed,
      // below code should not be used.
      // await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(TextFormField), findsNothing);
      expect(find.byType(ElevatedButton), findsNothing);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets(
        'when login status is success, then show email TextFormField, password TextFormBuild, submit button',
            (tester) async {
          final targetView = MaterialApp(
            home: BlocProvider(
              create: (context) =>
                  LoginBloc(authenticateRepository: authenticateRepository, loginState: LoginState(status: LoginStatus.success)),
              child: const ViewLogin(),
            ),
          );

          await tester.pumpWidget(targetView);
          await tester.pumpAndSettle(const Duration(seconds: 1));

          expect(find.byType(TextFormField), findsNWidgets(2));
          expect(find.byType(ElevatedButton), findsOneWidget);
          expect(find.byType(CircularProgressIndicator), findsNothing);
        });
  });

  group('action validation', () {

  });
}
