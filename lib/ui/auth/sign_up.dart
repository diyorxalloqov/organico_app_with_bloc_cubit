import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color black = const Color(0xff171725);
    Color grey = const Color(0xff92929D);

    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: black,
        title: const Text("New Register"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "It looks like you don’t have an account on this number. Please let us know some information for a secure service.",
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
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100)),
                  hintText: "Full Name",
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
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100)),
                  hintText: "Password",
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
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100)),
                  hintText: "Full Name",
                  hintStyle: TextStyle(color: grey)),
            ),
          ],
        ),
      ),
    );
  }
}
