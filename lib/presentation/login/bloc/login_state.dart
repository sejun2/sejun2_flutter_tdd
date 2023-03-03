import 'package:equatable/equatable.dart';
import 'package:sejun2_flutter_tdd/domain/models/token.dart';

enum LoginStatus { initial, loading, success, failure }

class LoginState extends Equatable {
  LoginState();

  Token? token;

  LoginStatus status = LoginStatus.initial;

  @override
  List<Object> get props => [status];

  LoginState copyWith({
    LoginStatus? status,
    Token? token,
  }) {
    return LoginState()
      ..status = status ?? this.status
      ..token = token ?? this.token;
  }
}