import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/ui/materi/Energi%20copy/Materi_Energi.dart';
import 'package:mediainteaktifpangan/app/ui/materi/Energi/Materi_Energi.dart';
import 'package:mediainteaktifpangan/app/ui/materi/industri/Materi_Industri.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pangan/Materi_Pangan.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';

class MateriScreen extends StatefulWidget {
  MateriScreen({Key key}) : super(key: key);

  @override
  _MateriScreenState createState() => _MateriScreenState();
}

var menuList = [
  {
    "images": "assets/Icon/button-pangan-01.png",
    "route": MateriPanganScreen(),
    "name": "Kopetensi Dasar"
  },
  {
    "images": "assets/Icon/button-industri-01.png",
    "route": MateriIndustriScreen(),
    "name": "Tujuan"
  },
  {
    "images": "assets/Icon/button-terbaru-01.png",
    "route": MateriEnergiScreen(),
    "name": "Petunjuk Pengunaan"
  },
  {
    "images": "assets/Icon/button-pengelolahan-01.png",
    "route": MateriPengolahanScreen(),
    "name": "Profil Pengembang"
  },
];

class _MateriScreenState extends State<MateriScreen> {
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
          widgetTitle: "assets/Icon/button-materi-01.png",
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
        custombar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: Image.asset("assets/Icon/button-home.png",
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
