import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pangan/Peternakan.dart';

class PeternakanController extends GetxController{
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
        "route": WidgetPeternakan1(),
      },
      {
        "route": WidgetPeternakan2(),
      },
     

    ];
  }
}