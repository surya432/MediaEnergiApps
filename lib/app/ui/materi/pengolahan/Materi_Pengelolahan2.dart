import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/controller/Pengelolahan2Controller.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';

class Pengelolahan2Screen extends StatefulWidget {
  @override
  _Pengelolahan2ScreenState createState() => _Pengelolahan2ScreenState();
}

class _Pengelolahan2ScreenState extends State<Pengelolahan2Screen>
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
    print(Get.find<Pengelolahan2Controller>()
        .menuList[Get.find<Pengelolahan2Controller>().pageIndex.value]['images']
        .toString());
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: GetX<Pengelolahan2Controller>(
          builder: (controller) {
            return BoardTitleWidget(
              widgetTitle: Get.find<Pengelolahan2Controller>()
                  .menuList[Get.find<Pengelolahan2Controller>().pageIndex.value]
                      ['images']
                  .toString(),
              widgetContent: Center(
                child: GetX<Pengelolahan2Controller>(
                  initState: (state) =>
                      Get.find<Pengelolahan2Controller>().initparameter(),
                  builder: (controller) {
                    print(Get.find<Pengelolahan2Controller>()
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
                                  Get.find<Pengelolahan2Controller>().menuList[
                                      Get.find<Pengelolahan2Controller>()
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
                              Obx(() => Get.find<Pengelolahan2Controller>()
                                          .pageIndex
                                          .value >
                                      0
                                  ? GestureDetector(
                                      onTap: () =>
                                          Get.find<Pengelolahan2Controller>()
                                              .decrement(),
                                      child: Image.asset("assets/Icon/prev.png",
                                          height: 40, width: 40),
                                    )
                                  : Container(height: 40, width: 40)),
                              Obx(() => Get.find<Pengelolahan2Controller>()
                                          .pageIndex
                                          .value <
                                      Get.find<Pengelolahan2Controller>()
                                              .menuList
                                              .length -
                                          1
                                  ? GestureDetector(
                                      onTap: () =>
                                          Get.find<Pengelolahan2Controller>()
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

class WidgetPengelolahan3 extends StatelessWidget {
  const WidgetPengelolahan3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Pengelolaan Bahan Industri\n",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              wordSpacing: 2,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
          Text(
            "Salah satu tujuan perindustrian adalah mewujudkan industri yang mandiri, berdaya saing, maju serta industri hijau yang mana dalam proses produksinya mengutamakan upaya efisiensi dan efektivitas penggunaan sumber daya secara berkelanjutan sehingga mampu menyelaraskan pembangunan industri dengan kelestarian fungsi lingkungan hidup.",
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

class WidgetPengelolahan4 extends StatelessWidget {
  const WidgetPengelolahan4({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Pemanfaatan SDA secara efisien dilakukan melalui :\n" +
                "a. Penghematan\n" +
                "b. Penggunaan teknologi yang ramah lingkungan\n" +
                "c. Optimalisasi kinerja proses produksi\n" +
                "Pemanfaatan SDA ramah lingkungan dan berkelanjutan dilakukan melalui:\n" +
                "a. Pengurangan limbah\n" +
                "b. Penggunaan kembali\n" +
                "c. Pengolahan kembali\n" +
                "d. Pemulihan",
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
