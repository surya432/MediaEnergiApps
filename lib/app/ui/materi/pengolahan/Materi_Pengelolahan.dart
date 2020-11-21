import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/controller/HomeController.dart';
import 'package:mediainteaktifpangan/app/controller/PengelolahanController.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';

class PengelolahanScreen extends StatefulWidget {
  @override
  _PengelolahanScreenState createState() => _PengelolahanScreenState();
}

class _PengelolahanScreenState extends State<PengelolahanScreen>
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
    print(Get.find<PengelolahanController>()
        .menuList[Get.find<PengelolahanController>().pageIndex.value]['images']
        .toString());
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: GetX<PengelolahanController>(
          builder: (controller) {
            return BoardTitleWidget(
              widgetTitle: Get.find<PengelolahanController>()
                  .menuList[Get.find<PengelolahanController>().pageIndex.value]
                      ['images']
                  .toString(),
              widgetContent: Center(
                child: GetX<PengelolahanController>(
                  initState: (state) =>
                      Get.find<PengelolahanController>().initparameter(),
                  builder: (controller) {
                    print(Get.find<PengelolahanController>()
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
                                  Get.find<PengelolahanController>().menuList[
                                      Get.find<PengelolahanController>()
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
                              Obx(() => Get.find<PengelolahanController>()
                                          .pageIndex
                                          .value >
                                      0
                                  ? GestureDetector(
                                      onTap: () =>
                                          Get.find<PengelolahanController>()
                                              .decrement(),
                                      child: Image.asset("assets/Icon/prev.png",
                                          height: 40, width: 40),
                                    )
                                  : Container(height: 40, width: 40)),
                              Obx(() => Get.find<PengelolahanController>()
                                          .pageIndex
                                          .value <
                                      Get.find<PengelolahanController>()
                                              .menuList
                                              .length -
                                          1
                                  ? GestureDetector(
                                      onTap: () =>
                                          Get.find<PengelolahanController>()
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

class WidgetPengelolahan1 extends StatelessWidget {
  const WidgetPengelolahan1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Pengelolaan Bahan Pangan\n",
            style: TextStyle(
              fontSize: 16,
              // fontWeight: FontWeight.bold,
              fontFamily: "FredokaOne",
              wordSpacing: 4,
              color: Colors.white,
            ),
          ),
          Text(
            "Pertanian merupakan komponen utama dalam penyediaan bahan pangan. Pelestarian pertanian adalah tindakan pengelolaan dan penggunaan lahan pertanian untuk usaha perbaikan dan pengingkatan mutunya serta pemeliharaan keseimbangan ekologis untuk memperoleh sistem produksi berkelanjutan.",
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

class WidgetPengelolahan2 extends StatelessWidget {
  const WidgetPengelolahan2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Tindakan pelestarian harus memperhatikan :\n",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              wordSpacing: 2,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
          Text(
            "a. Pencegahan erosi permukaan tanah (kulturteknis, biologis, teknis mekanis)\n" +
                "b. Pencegahan teknik budi daya tanaman yang bersifat penambangan hara tanah secara esploitatif\n" +
                "c. Pergiliran varietas dan penanaman multivarietas pada satu hamparan\n" +
                "d. Pemeliharaan prasarana irigrasi, tata guna air, waduk, sumber air dan wilayah resapan air\n" +
                "e. Pendidikan, pelatihan dan penyadaran petani akan pentingnya pemeliharaan kelestarian lahan pertanian",
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
