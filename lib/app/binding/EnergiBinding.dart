import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/EnergiController.dart';

class EnergiBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EnergiController>(() => EnergiController());
  }
}
