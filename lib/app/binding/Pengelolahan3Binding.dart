import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/Pengelolahan3Controller.dart';

class Pengelolahan3Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pengelolahan3Controller>(() => Pengelolahan3Controller());
  }
}
