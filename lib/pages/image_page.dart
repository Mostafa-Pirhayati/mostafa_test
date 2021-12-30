import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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