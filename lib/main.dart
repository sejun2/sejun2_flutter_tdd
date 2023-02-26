import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sejun2_flutter_tdd/data/di/di_provider.dart';
import 'package:sejun2_flutter_tdd/presentation/login/bloc/login_bloc.dart';
import 'package:sejun2_flutter_tdd/presentation/login/view_login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/repositories/authenticate_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // provide di
  DiProvider.provide();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<LoginBloc>(
          create: (BuildContext context) {
            return LoginBloc(
                authenticateRepository: GetIt.I.get<AuthenticateRepository>());
          },
          child: ViewLogin()),
    );
  }
}
