import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageCtrl extends GetxController{
  final String title = 'Image';
  final Color color = Colors.red;
  var selectedImagePath = ''.obs;

  void getImage(ImageSource imageSource) async{
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if(pickedFile != null){
      selectedImagePath.value = pickedFile.path;
    }else{
      Get.snackbar('Error', 'no image selected',
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }
}