import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardDecorationWidget.dart';

class PetunjukPenggunaanScreen extends StatefulWidget {
  PetunjukPenggunaanScreen({Key key}) : super(key: key);

  @override
  _PetunjukPenggunaanScreenState createState() =>
      _PetunjukPenggunaanScreenState();
}

class _PetunjukPenggunaanScreenState extends State<PetunjukPenggunaanScreen> {
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
        content: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: context.mediaQueryPadding.top),
                height: Get.height * 0.7,
                child: BoardBackground(
                  dataContent: Container(
                    margin: EdgeInsets.only(top: 25),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Gunakan media interaktif ini untuk mempermudah proses pembelajaran Geografi materi Ketahanan Pangan, Industri dan Energi di Indonesia. Perhatikan setiap materi yang disajikan dan asah kemampuan mu di kuis sebagai bahan evaluasi. tombol yang dapat di gunakan",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: "Gothic",
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset("assets/Icon/button-14.png",
                                  height: Get.height * 0.2,
                                  width: Get.width * 0.3),
                              Image.asset("assets/Icon/button-10.png",
                                  height: Get.height * 0.2,
                                  width: Get.width * 0.3),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset("assets/Icon/button-kuis-01.png",
                                  height: Get.height * 0.2,
                                  width: Get.width * 0.3),
                              SizedBox(width: 8),
                              Image.asset("assets/Icon/button-materi-01.png",
                                  height: Get.height * 0.2,
                                  width: Get.width * 0.3),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset("assets/Icon/button-16.png",
                                  height: Get.height * 0.2,
                                  width: Get.width * 0.3),
                              SizedBox(width: 8),
                              Image.asset("assets/Icon/button-17.png",
                                  height: Get.height * 0.2,
                                  width: Get.width * 0.3),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/Icon/button__petunjuk_penggunaan.png",
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
