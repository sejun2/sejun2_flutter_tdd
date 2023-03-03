import '../../domain/models/token.dart';
import '../entities/entity.dart';
import 'mapper.dart';

class TokenMapper implements Mapper<Token, LoginResponse>{
  @override
  LoginResponse asEntity(Token model) {
    return LoginResponse(
      token: model.token,
    );
  }

  @override
  Token asModel(LoginResponse entity) {
    return Token(
      token: entity.token,
    );
  }
}