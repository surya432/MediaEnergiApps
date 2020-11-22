import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/QuizController.dart';

class QuizBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizController>(() => QuizController());
  }
}
