import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/Pengelolahan2Controller.dart';

class Pengelolahan2Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pengelolahan2Controller>(() => Pengelolahan2Controller());
  }
}
