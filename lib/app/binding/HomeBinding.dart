import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/HomeController.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
