import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostafa_test/pages_controllers/login_controller.dart';

class LogInPage extends GetView<LogInCtrl> {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
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