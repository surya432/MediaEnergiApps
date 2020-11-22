import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/materi/industri/Materi_Industri.dart';

class IndustriController extends GetxController{
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
        "route": WidgetIndustri1(),
        "images":"assets/Icon/button-industri-02.png",
      },
      {
        "route": WidgetIndustri2(),
        "images":"assets/Icon/button-industri-03.png",
      },
      {
        "route": WidgetIndustri3(),
        "images":"assets/Icon/button-industri-04.png",
      },


    ];
  }
}