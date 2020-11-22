import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pangan/Perkebunan.dart';

class PerkebunanController extends GetxController {
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
        "route": WidgetPekebunan1(),
      },
      {
        "route": WidgetPekebunan2(),
      },
      {
        "route": WidgetPekebunan21(),
      },
      {
        "route": WidgetPekebunan3(),
      },
      {
        "route": WidgetPekebunan4(),
      },
      {
        "route": WidgetPekebunan5(),
      },
    ];
  }
}
