// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:organico_with_bloc_cubit/provider/auth/register_provider.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    RegistrProvider registrProvider = Provider.of<RegistrProvider>(context);
    Color black = const Color(0xff171725);
    Color grey = const Color(0xff92929D);

    return ChangeNotifierProvider(
      create: (context) => RegistrProvider(),
      builder: (context, child) => Scaffold(
        backgroundColor: black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: black,
          title: const Text("New Register"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "It looks like you don't have an account on this number. Please let us know some information for a secure service.",
                  style: TextStyle(color: grey),
                ),
                const SizedBox(
                  height: 48,
                ),
                Text(
                  "Full Name",
                  style: TextStyle(color: grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: registrProvider.emailController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      hintText: "Full Name",
                      fillColor: const Color(0xff1D2335),
                      filled: true,
                      hintStyle: TextStyle(color: grey)),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Password",
                  style: TextStyle(color: grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: registrProvider.passwordController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      hintText: "Password",
                      fillColor: const Color(0xff1D2335),
                      filled: true,
                      hintStyle: TextStyle(color: grey)),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Password Confirmation",
                  style: TextStyle(color: grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: registrProvider.ConfirmationPassController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                    hintText: "Password Confirmation",
                    fillColor: const Color(0xff1D2335),
                    filled: true,
                    hintStyle: TextStyle(color: grey),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.check_box_outline_blank,
                          color: Colors.grey,
                        )),
                    RichText(
                      text: TextSpan(
                        text: 'I accept the ',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        children: <InlineSpan>[
                          const TextSpan(
                            text: 'Terms of Use ',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                            ),
                          ),
                          const TextSpan(
                            text: "and ",
                            style: TextStyle(
                              decorationThickness: 2.0,
                            ),
                          ),
                          TextSpan(
                            onEnter: (event) {},
                            text: 'Privacy Policy',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
                Center(
                    child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (registrProvider.passwordController.text ==
                              registrProvider.ConfirmationPassController.text) {
                            registrProvider.register(context);
                          } else {
                            null;
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(374, 52),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(100),
                                    right: Radius.circular(100))),
                            backgroundColor: const Color(0xffAA0023)),
                        child: const Text("Sign Up")),
                    const SizedBox(
                      height: 45,
                    ),
                    Text(
                      "or use",
                      style: TextStyle(color: grey),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(374, 52),
                            side: const BorderSide(color: Colors.white60),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(100),
                                    right: Radius.circular(100))),
                            backgroundColor: black),
                        child: const Text("Sign Up with Google")),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
