import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/PertanianController.dart';

class PertanianBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PertanianController>(() => PertanianController());
  }
}
