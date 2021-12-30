import 'package:get/get.dart';
import 'package:mostafa_test/pages_controllers/dashboard_controller.dart';
import 'package:mostafa_test/pages_controllers/image_controller.dart';
import 'package:mostafa_test/pages_controllers/login_controller.dart';
import 'package:mostafa_test/pages_controllers/news_controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardCtrl>(() => DashBoardCtrl());
    Get.lazyPut<NewsCtrl>(() => NewsCtrl());
    Get.lazyPut<ImageCtrl>(() => ImageCtrl());
    Get.lazyPut<LogInCtrl>(() => LogInCtrl());
  }
}