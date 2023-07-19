// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:organico_with_bloc_cubit/db/authDB_service.dart';
import 'package:organico_with_bloc_cubit/ui/auth/sign_up.dart';
import 'package:organico_with_bloc_cubit/ui/pages/MainPage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => checkAccesToken(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171725),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assets/Logo.png"), const Text("Organico")],
        ),
      ),
    );
  }

  void checkAccesToken(BuildContext context) async {
    await AuthDB().openbox();

    String? accesToken = await Hive.box("authBox").get("access_token");
    if (accesToken != null && accesToken.isNotEmpty) {
      //Home
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MainPage()),
          (route) => false);
    } else {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const SignUpPage()),
          (route) => false);
    }
  }
}
