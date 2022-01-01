import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostafa_test/binding/dashboard_binding.dart';
import 'package:mostafa_test/pages/dashboard_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
            name: "/",
            page: () => const MyDashBoard(),
            binding: DashBoardBinding()),
      ],
    );
  }
}
