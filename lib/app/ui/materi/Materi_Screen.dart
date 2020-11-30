import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pangan/Materi_Pangan.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pengolahan/Pengolahan.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/WidgetBackMusic.dart';

var menuList = [
  {
    "images": "assets/Icon/menu-button-pangan.png",
    "route": MateriPanganScreen(),
    "name": "Kopetensi Dasar"
  },
  {
    "images": "assets/Icon/menu-button-industri.png",
    "route": "/Industri",
    "name": "Industri"
  },
  {
    "images": "assets/Icon/menu-button-energi-terbaru.png",
    "route": "/Energi",
    "name": "Petunjuk Pengunaan"
  },
  {
    "images": "assets/Icon/menu-button-04.png",
    "route": MateriPengelolaanScreen(),
    "name": "Profil Pengembang"
  },
];

class MateriScreen extends StatelessWidget {
  const MateriScreen({Key key}) : super(key: key);

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
                                height: context.height * 0.15,
                                width: context.height * 0.15)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () => Get.toNamed(
                          menuList[1]['route'].toString(),
                        ),
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
                        onTap: () => Get.toNamed(
                          menuList[2]['route'],
                        ),
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
        ),
        custombar: WidgetAppBarBackMusic(),
      ),
    );
  }
}
