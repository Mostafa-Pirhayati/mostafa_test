import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getImage(ImageSource.gallery);
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.add_a_photo),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=> controller.selectedImagePath.value ==''?
                const Text('please select an Image', style: TextStyle(fontSize: 15))
                :Image.file(File(controller.selectedImagePath.value))
            ),
          ],
        ),
      ),
    );
  }
}