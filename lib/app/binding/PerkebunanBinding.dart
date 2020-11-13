import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/PerkebunanController.dart';

class PerkebunanBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PerkebunanController>(() => PerkebunanController());
  }
}
