import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pengolahan/Materi_Pengelolahan3.dart';

class Pengelolahan3Controller extends GetxController{
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
        "route": WidgetPengelolahan5(),
        "images":"assets/Icon/button-pengelolahan-01.png",
      },
      {
        "route": WidgetPengelolahan6(),
        "images":"assets/Icon/button-pengelolahan-01.png",
      },


    ];
  }
}