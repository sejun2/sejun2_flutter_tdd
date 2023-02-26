import 'package:dio/dio.dart';

class ReqresApiService {
  static const String _baseUrl = 'https://reqres.in/api';
  final _dio = Dio(BaseOptions(baseUrl: _baseUrl));

  Future<Response> login(String email, String password){
    return _dio.post('/login', data: {
      'email': email,
      'password': password,
    });
  }
}