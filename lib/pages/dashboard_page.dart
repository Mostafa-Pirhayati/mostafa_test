import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostafa_test/navigation/custom_navigation.dart';
import 'package:mostafa_test/pages/image_page.dart';
import 'package:mostafa_test/pages/login_page.dart';
import 'package:mostafa_test/pages/news_page.dart';
import 'package:mostafa_test/pages_controllers/dashboard_controller.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({Key? key}) : super(key: key);


  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardCtrl>(
        builder: (controller){
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                NewsPage(),
                ImagePage(),
                LogInPage(),
              ],
            ),

          ),
          bottomNavigationBar: CustomAnimatedBottomBar(
            containerHeight: 70,
            backgroundColor: Colors.white,
            selectedIndex: controller.tabIndex,
            showElevation: true,
            itemCornerRadius: 24,
            curve: Curves.easeIn,
            onItemSelected: controller.changeTabIndex,
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: const Icon(Icons.message),
                title: const Text('News'),
                activeColor: Colors.pinkAccent,
                inactiveColor: _inactiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.add_a_photo),
                title: const Text('Image'),
                activeColor: Colors.red,
                inactiveColor: _inactiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.login),
                title: const Text('Login'),
                activeColor: Colors.blue,
                inactiveColor: _inactiveColor,
                textAlign: TextAlign.center,
              ),
            ],
          ),
      );
    });
  }
}