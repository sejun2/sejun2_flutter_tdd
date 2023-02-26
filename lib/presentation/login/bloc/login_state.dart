import 'package:equatable/equatable.dart';

enum LoginStatus { initial, loading, success, failure }

class LoginState extends Equatable {
  LoginState();

  LoginStatus status = LoginStatus.initial;

  @override
  List<Object> get props => [status];

  LoginState copyWith({
    LoginStatus? status,
  }) {
    return LoginState()
      ..status = status ?? this.status;
  }
}