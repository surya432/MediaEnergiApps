import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/PengelolahanController.dart';

class PengelolahanBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PengelolahanController>(() => PengelolahanController());
  }
}
