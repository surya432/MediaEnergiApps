import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/HomeController.dart';

class WidgetAppBarBackMusic extends StatelessWidget {
  const WidgetAppBarBackMusic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Get.back(),
          child: Image.asset("assets/Icon/button-10.png",
              height: context.height * 0.12, width: context.height * 0.12),
        ),
        GestureDetector(
          onTap: () => Get.find<HomeController>().playMusic(),
          child: Obx(
            () => Image.asset(
                Get.find<HomeController>().getImagesPlay.toString(),
                height: context.height * 0.12,
                width: context.height * 0.12),
          ),
        ),
      ],
    );
  }
}
