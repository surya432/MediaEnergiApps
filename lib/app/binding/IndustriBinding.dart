import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/IndustriController.dart';

class IndustriBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndustriController>(() => IndustriController());
  }
}
