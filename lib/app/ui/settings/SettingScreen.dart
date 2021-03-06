import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/ui/settings/menus/Pengembang/PengembangScreen.dart';
import 'package:mediainteaktifpangan/app/ui/settings/menus/kopetensiDasar/KopetensiDasarScreen.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/WidgetBackMusic.dart';

import 'menus/PetunjukPenggunaan/PetunjukPenggunaanScreen.dart';
import 'menus/tujuan/TujuanScreen.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

var menuList = [
  {
    "images": "assets/Icon/button-14.png",
    "route": KopetensiDasarScreen(),
    "name": "Kopetensi Dasar"
  },
  {
    "images": "assets/Icon/button-15.png",
    "route": TujuanScreen(),
    "name": "Tujuan"
  },
  {
    "images": "assets/Icon/button-16.png",
    "route": PetunjukPenggunaanScreen(),
    "name": "Petunjuk Pengunaan"
  },
  {
    "images": "assets/Icon/button-17.png",
    "route": PengembangScreen(),
    "name": "Profil Pengembang"
  },
];

class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    precacheImage(new AssetImage("assets/Icon/board-01-min.png"), Get.context);
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
                        onTap: () => Get.to(menuList[0]['route'],
                            transition: Transition.cupertinoDialog,
                            duration: Duration(milliseconds: 700)),
                        child: Container(
                            child: Image.asset(menuList[0]['images'],
                                height: context.height * 0.15,
                                width: context.height * 0.15)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () => Get.to(menuList[1]['route'],
                            transition: Transition.zoom,
                            duration: Duration(milliseconds: 700)),
                        child: Image.asset(menuList[1]['images'],
                            height: context.height * 0.15,
                            width: context.height * 0.15),
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
                            height: context.height * 0.15,
                            width: context.height * 0.15),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Get.to(menuList[3]['route'],
                            transition: Transition.cupertinoDialog,
                            duration: Duration(milliseconds: 700)),
                        child: Image.asset(menuList[3]['images'],
                            height: context.height * 0.15,
                            width: context.height * 0.15),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
          widgetTitle: "assets/Icon/button-pengaturan-01.png",
        ),
        custombar: WidgetAppBarBackMusic(),
      ),
    );
  }
}
