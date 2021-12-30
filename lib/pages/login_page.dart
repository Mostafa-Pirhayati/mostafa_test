import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text(
            "Login Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}