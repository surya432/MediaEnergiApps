import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/PerikananController.dart';

class PerikananBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PerikananController>(() => PerikananController());
  }
}
