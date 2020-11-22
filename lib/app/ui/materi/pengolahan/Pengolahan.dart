import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/WidgetBackMusic.dart';

class MateriPengelolaanScreen extends StatefulWidget {
  MateriPengelolaanScreen({Key key}) : super(key: key);

  @override
  _MateriPengelolaanScreenState createState() =>
      _MateriPengelolaanScreenState();
}

var menuList = [
  {
    "images": "assets/Icon/menu-button-pangan.png",
    "route": "/Pengelolahan",
    "name": "Kopetensi Dasar"
  },
  {
    "images": "assets/Icon/menu-button-industri.png",
    "route": "/Pengelolahan2",
    "name": "Tujuan"
  },
  {
    "images": "assets/Icon/menu-button-energi-terbaru.png",
    "route": "/Pengelolahan3",
    "name": "Petunjuk Pengunaan"
  },
];

class _MateriPengelolaanScreenState extends State<MateriPengelolaanScreen> {
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
                    Expanded(child: Container()),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
          widgetTitle: "assets/Icon/button-pengelolahan-01.png",
        ),
        custombar: WidgetAppBarBackMusic(),
      ),
    );
  }
}
