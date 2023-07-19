import 'package:dio/dio.dart';
import 'package:organico_with_bloc_cubit/core/constants/urls.dart';
import 'package:organico_with_bloc_cubit/models/auth/authModel.dart';

class AuthService {
  Future<dynamic> register(
      {required String email, required String password}) async {
    try {
      Response response = await Dio().post(Urls.register, data: {
        "email": email,
        "password": password,
      });
      if (response.statusCode == 201) {
        return AuthModel.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioException catch (e) {
      return e.message.toString();
    }
  }
}
