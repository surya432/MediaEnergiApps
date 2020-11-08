import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pangan/Pertanian.dart';

class PertanianController extends GetxController {
  var menuList = List<Map<dynamic, dynamic>>().obs;
  var pageIndex = 0.obs;
  decrement() => pageIndex.value--;
  increment() => pageIndex.value++;

  void onInit() {
    initparameter();

    super.onInit();
  }

  void initparameter() {
    menuList.value = [
      {
        "route": WidgetPangan1(),
      },
      {
        "route": WidgetPangan2(),
      },
      {
        "route": WidgetPangan3(),
      },
      {
        "route": WidgetPangan4(),
      },
      {
        "route": WidgetPangan5(),
      },
      {
        "route": WidgetPangan6(),
      },
    ];
  }
}
