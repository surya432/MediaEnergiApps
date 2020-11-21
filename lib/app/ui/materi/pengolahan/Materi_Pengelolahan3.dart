import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/controller/HomeController.dart';
import 'package:mediainteaktifpangan/app/controller/Pengelolahan3Controller.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';

class Pengelolahan3Screen extends StatefulWidget {
  @override
  _Pengelolahan3ScreenState createState() => _Pengelolahan3ScreenState();
}

class _Pengelolahan3ScreenState extends State<Pengelolahan3Screen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    precacheImage(
        new AssetImage("assets/Icon/menu-button-perikanan.png"), Get.context);
    precacheImage(new AssetImage("assets/bg_01.jpg"), Get.context);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(Get.find<Pengelolahan3Controller>()
        .menuList[Get.find<Pengelolahan3Controller>().pageIndex.value]['images']
        .toString());
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: GetX<Pengelolahan3Controller>(
          builder: (controller) {
            return BoardTitleWidget(
              widgetTitle: Get.find<Pengelolahan3Controller>()
                  .menuList[Get.find<Pengelolahan3Controller>().pageIndex.value]
                      ['images']
                  .toString(),
              widgetContent: Center(
                child: GetX<Pengelolahan3Controller>(
                  initState: (state) =>
                      Get.find<Pengelolahan3Controller>().initparameter(),
                  builder: (controller) {
                    print(Get.find<Pengelolahan3Controller>()
                        .pageIndex
                        .value
                        .toString());
                    return Stack(
                      children: [
                        // Expanded(
                        //   flex:1,
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(
                        //         left: 16, right: 16, top: 16, bottom: 8),
                        //     child: Align(
                        //       alignment: Alignment.topLeft,
                        //       child:
                        //           Get.find<PertanianController>().menuList[
                        //               Get.find<PertanianController>()
                        //                   .pageIndex
                        //                   .value]['route'],
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 16, bottom: 40),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child:
                                  Get.find<Pengelolahan3Controller>().menuList[
                                      Get.find<Pengelolahan3Controller>()
                                          .pageIndex
                                          .value]['route'],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(() => Get.find<Pengelolahan3Controller>()
                                          .pageIndex
                                          .value >
                                      0
                                  ? GestureDetector(
                                      onTap: () =>
                                          Get.find<Pengelolahan3Controller>()
                                              .decrement(),
                                      child: Image.asset("assets/Icon/prev.png",
                                          height: 40, width: 40),
                                    )
                                  : Container(height: 40, width: 40)),
                              Obx(() => Get.find<Pengelolahan3Controller>()
                                          .pageIndex
                                          .value <
                                      Get.find<Pengelolahan3Controller>()
                                              .menuList
                                              .length -
                                          1
                                  ? GestureDetector(
                                      onTap: () =>
                                          Get.find<Pengelolahan3Controller>()
                                              .increment(),
                                      child: Image.asset("assets/Icon/next.png",
                                          height: context.isTablet ? 60 : 40,
                                          width: context.isTablet ? 60 : 40),
                                    )
                                  : Container(
                                      height: context.isTablet ? 60 : 40,
                                      width: context.isTablet ? 60 : 40)),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            );
          },
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

class WidgetPengelolahan5 extends StatelessWidget {
  const WidgetPengelolahan5({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Pengelolaan Energi Baru dan Terbarukan\n",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              wordSpacing: 2,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
          Text(
            "Pengembangan sumber energi yang terbarukan sebagai sumber energi alternatif harus dilakukan karena :\n" +
                "a. Permintaan energi meningkat dengan pesat karena industrialisasi dan pertumbuhan penduduk yang pesat\n" +
                "b. Sumber energi fosil tidak terbarukan\n" +
                "c. Sumber konvensional  (bahan bakar fosil) juga menyebabkan polusi",
            textAlign: TextAlign.justify,
            style: TextStyle(
              // fontSize: 13,
              wordSpacing: 2,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}

class WidgetPengelolahan6 extends StatelessWidget {
  const WidgetPengelolahan6({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Pemanfaatan sumber energi terbarukan :\n" +
                "1. Jenis energi aliran dan air terjun, energi panas bumi, energi gerakan dan perbedaan suhu lapisan laut dan energi angin diarahkan untuk ketenagalistrikan\n" +
                "2. Pemanfaatan sumber energi terbarukan dari jenis energi sinar matahari diarahkan untuk ketenagalistrikan dan energi nonlistrik untuk industri, rumah tangga, dan transportasi",
            textAlign: TextAlign.justify,
            style: TextStyle(
              // fontSize: 13,
              wordSpacing: 2,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}
