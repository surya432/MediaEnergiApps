import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/ui/settings/menus/Pengembang/PengembangScreen.dart';
import 'package:mediainteaktifpangan/app/ui/settings/menus/kopetensiDasar/KopetensiDasarScreen.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardDecorationWidget.dart';

class MateriEnergiScreen extends StatefulWidget {
  MateriEnergiScreen({Key key}) : super(key: key);

  @override
  _MateriEnergiScreenState createState() => _MateriEnergiScreenState();
}

var menuList = [
  {
    "images": "assets/Icon/button-pangan-01.png",
    "route": KopetensiDasarScreen(),
    "name": "Kopetensi Dasar"
  },
  {
    "images": "assets/Icon/button-industri-01.png",
    "route": PengembangScreen(),
    "name": "Tujuan"
  },
  {
    "images": "assets/Icon/button-terbaru-01.png",
    "route": PengembangScreen(),
    "name": "Petunjuk Pengunaan"
  },
  {
    "images": "assets/Icon/button-pengelolahan-01.png",
    "route": PengembangScreen(),
    "name": "Profil Pengembang"
  },
];

class _MateriEnergiScreenState extends State<MateriEnergiScreen> {
  @override
  void initState() {
    precacheImage(
        new AssetImage("assets/Icon/button-terbaru-01.png"), Get.context);
    precacheImage(new AssetImage("assets/bg_01.jpg"), Get.context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: context.mediaQueryPadding.top),
                height: Get.height * 0.7,
                child: BoardBackground(
                  dataContent: Center(
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () => Get.to(menuList[0]['route'],
                                    transition: Transition.cupertinoDialog,
                                    duration: Duration(milliseconds: 700)),
                                child: Container(
                                    child: Image.asset(menuList[0]['images'],
                                        height: 60, width: 60)),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () => Get.to(menuList[1]['route'],
                                    transition: Transition.zoom,
                                    duration: Duration(milliseconds: 700)),
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
                                onTap: () => Get.to(menuList[2]['route'],
                                    transition: Transition.cupertinoDialog,
                                    duration: Duration(milliseconds: 700)),
                                child: Image.asset(menuList[2]['images'],
                                    height: 60, width: 60),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () => Get.to(menuList[3]['route'],
                                    transition: Transition.cupertinoDialog,
                                    duration: Duration(milliseconds: 700)),
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
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/Icon/button-industri-01.png",
                  height: Get.height * 0.2, width: Get.width * 0.3),
            )
          ],
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
              onTap: () => {},
              child: Image.asset("assets/Icon/button-music.png",
                  height: 60, width: 60),
            ),
          ],
        ),
      ),
    );
  }
}
