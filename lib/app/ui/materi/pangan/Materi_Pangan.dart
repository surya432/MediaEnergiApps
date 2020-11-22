import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/WidgetBackMusic.dart';

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
                                height: context.height * 0.15,
                                width: context.height * 0.15)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () => Get.toNamed(
                          menuList[1]['route'],
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
                        onTap: () => Get.toNamed(menuList[2]['route']),
                        child: Image.asset(menuList[2]['images'],
                            height: context.height * 0.15,
                            width: context.height * 0.15),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Get.toNamed(
                          menuList[3]['route'],
                        ),
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
          widgetTitle: "assets/Icon/button-pangan-01.png",
        ),
        custombar: WidgetAppBarBackMusic(),
      ),
    );
  }
}
