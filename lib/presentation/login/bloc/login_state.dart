import 'package:equatable/equatable.dart';
import 'package:sejun2_flutter_tdd/domain/models/token.dart';

enum LoginStatus { initial, loading, success, failure }

class LoginState extends Equatable {
  LoginState({this.status = LoginStatus.initial, this.token});

  Token? token;

  LoginStatus? status;

  @override
  List<Object> get props => [];

  LoginState copyWith({
    LoginStatus? status,
    Token? token,
  }) {
    return LoginState()
      ..status = status ?? this.status
      ..token = token ?? this.token;
  }
}