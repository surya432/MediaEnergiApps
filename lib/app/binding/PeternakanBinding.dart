import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/PeternakanController.dart';

class PeternakanBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PeternakanController>(() => PeternakanController());
  }
}
