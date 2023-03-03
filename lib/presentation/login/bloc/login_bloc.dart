import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/authenticate_repository.dart';
import 'package:sejun2_flutter_tdd/presentation/login/bloc/login_state.dart';

class LoginBloc extends Cubit<LoginState> {
  LoginBloc({required this.authenticateRepository}) : super(LoginState());

  final AuthenticateRepository authenticateRepository;

  login(String email, String password) async{
    emit(state.copyWith(status: LoginStatus.loading));

    final result = await authenticateRepository.login(email, password);
    result.when(success: (value) {
      emit(state.copyWith(
        status: LoginStatus.success,
        token: value,
      ));
    }, failure: (error) {
      emit(state.copyWith(
        status: LoginStatus.failure,
      ));
    });
  }
}