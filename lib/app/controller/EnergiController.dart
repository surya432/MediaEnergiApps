import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/materi/Energi/Materi_Energi.dart';

class EnergiController extends GetxController{
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
        "route": WidgetEnergi1(),
        "images":"assets/Icon/button-terbaru-01.png",
      },
      {
        "route": WidgetEnergi2(),
        "images":"assets/Icon/button-terbaru-01.png",
      },
      {
        "route": WidgetEnergi3(),
        "images":"assets/Icon/button-terbaru-01.png",
      }, {
        "route": WidgetEnergi31(),
        "images":"assets/Icon/button-terbaru-01.png",
      },


    ];
  }
}