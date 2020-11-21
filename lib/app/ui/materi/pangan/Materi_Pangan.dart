import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/controller/HomeController.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';

class MateriPanganScreen extends StatefulWidget {
  MateriPanganScreen({Key key}) : super(key: key);

  @override
  _MateriPanganScreenState createState() => _MateriPanganScreenState();
}

var menuList = [
  {
    "images": "assets/Icon/menu-button-pertanian.png",
    "route": "/Pertanian",
    "name": "Kopetensi Dasar"
  },
  {
    "images": "assets/Icon/menu-button-perkebunan.png",
    "route": "/Perkebunan",
    "name": "Tujuan"
  },
  {
    "images": "assets/Icon/menu-button-perikanan.png",
    "route": "/Perikanan",
    "name": "Petunjuk Pengunaan"
  },
  {
    "images": "assets/Icon/menu-button-pertenakan.png",
    "route": "/Peternakan",
    "name": "Profil Pengembang"
  },
];

class _MateriPanganScreenState extends State<MateriPanganScreen> {
  @override
  void initState() {
    precacheImage(
        new AssetImage("assets/Icon/button-materi-01.png"), Get.context);
    precacheImage(new AssetImage("assets/bg_01.jpg"), Get.context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: BoardTitleWidget(
          widgetContent: Center(
            child: Column(
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () => Get.toNamed(menuList[0]['route']),
                        child: Container(
                            child: Image.asset(menuList[0]['images'],
                                height: 60, width: 60)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () => Get.toNamed(
                          menuList[1]['route'],
                        ),
                        child: Image.asset(menuList[1]['images'],
                            height: 60, width: 60),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Get.toNamed(menuList[2]['route']),
                        child: Image.asset(menuList[2]['images'],
                            height: 60, width: 60),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Get.toNamed(
                          menuList[3]['route'],
                        ),
                        child: Image.asset(menuList[3]['images'],
                            height: 60, width: 60),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
          widgetTitle: "assets/Icon/button-pangan-01.png",
        ),
        custombar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: Image.asset("assets/Icon/button-10.png",
                  height: 60, width: 60),
            ),
            GestureDetector(
              onTap: () => Get.find<HomeController>().playMusic(),
              child: Obx(
                () => Image.asset(
                    Get.find<HomeController>().getImagesPlay.toString(),
                    height: 60,
                    width: 60),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
