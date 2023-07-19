// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:organico_with_bloc_cubit/db/authDB_service.dart';
import 'package:organico_with_bloc_cubit/models/auth/authModel.dart';
import 'package:organico_with_bloc_cubit/service/auth_service.dart';
import 'package:organico_with_bloc_cubit/ui/pages/MainPage.dart';

class RegistrProvider extends ChangeNotifier {
  AuthService authService = AuthService();
  AuthDB authDB = AuthDB();

  // Inputs
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController ConfirmationPassController = TextEditingController();

  bool isLoading = false;
  String error = '';
  Future<void> register(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    dynamic response = await authService.register(
      email: emailController.text,
      password: passwordController.text,
    );
    if (response is AuthModel) {
      isLoading = false;
      await authDB.writeToDB(response.accesToken.toString());
      // navigatorpushandremoveuntil qilib homepage otiladi
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const MainPage()),
        (route) => false,
      );
      notifyListeners();
    } else {
      isLoading = false;
      error = response;
      notifyListeners();
    }
  }
}
