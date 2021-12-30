import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostafa_test/pages_controllers/image_controller.dart';

class ImagePage extends GetView<ImageCtrl> {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Container(
        child: const Center(
          child: Text(
            "Image Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}