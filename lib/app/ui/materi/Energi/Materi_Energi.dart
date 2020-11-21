import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/controller/EnergiController.dart';
import 'package:mediainteaktifpangan/app/controller/HomeController.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';

class EnergiScreen extends StatefulWidget {
  @override
  _EnergiScreenState createState() => _EnergiScreenState();
}

class _EnergiScreenState extends State<EnergiScreen>
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
    print(Get.find<EnergiController>()
        .menuList[Get.find<EnergiController>().pageIndex.value]['images']
        .toString());
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: GetX<EnergiController>(
          builder: (controller) {
            return BoardTitleWidget(
              widgetTitle: Get.find<EnergiController>()
                  .menuList[Get.find<EnergiController>().pageIndex.value]
                      ['images']
                  .toString(),
              widgetContent: Center(
                child: GetX<EnergiController>(
                  initState: (state) =>
                      Get.find<EnergiController>().initparameter(),
                  builder: (controller) {
                    print(Get.find<EnergiController>()
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
                              child: Get.find<EnergiController>().menuList[
                                  Get.find<EnergiController>()
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
                              Obx(() => Get.find<EnergiController>()
                                          .pageIndex
                                          .value >
                                      0
                                  ? GestureDetector(
                                      onTap: () => Get.find<EnergiController>()
                                          .decrement(),
                                      child: Image.asset("assets/Icon/prev.png",
                                          height: 40, width: 40),
                                    )
                                  : Container(height: 40, width: 40)),
                              Obx(() => Get.find<EnergiController>()
                                          .pageIndex
                                          .value <
                                      Get.find<EnergiController>()
                                              .menuList
                                              .length -
                                          1
                                  ? GestureDetector(
                                      onTap: () => Get.find<EnergiController>()
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

class WidgetEnergi1 extends StatelessWidget {
  const WidgetEnergi1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Potensi dan Persebaran Sumber Daya untuk Penyedia Energi Baru dan Terbarukan (EBT)\n",
            style: TextStyle(
              fontSize: 16,
              // fontWeight: FontWeight.bold,
              fontFamily: "FredokaOne",
              wordSpacing: 4,
              color: Colors.white,
            ),
          ),
          Text(
            "Indonesia merupakan negara dengan potensi energi terbarukan yang cukup besar, hal ini dapat dilihat berdasarkan letak geografis, astronomis dan geologis Indonesia. Menurut UU RI Nomor 30 Tahun 2007, sumber daya energi adalah sumber daya alam yang dapat dimanfaatkan, baik sebagai sumber energi maupun sebagai energi.\n" +
                "Sumber energi adalah sesuatu yang dapat menghasilkan energi baik secara langsung maupun melalui proses konversi atau transformasi",
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

class WidgetEnergi2 extends StatelessWidget {
  const WidgetEnergi2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Energi terbarukan adalah sumber energi yang dihasilkan dari sumber daya energi yang berkelanjutan jika dikelolah dengan baik tidak ada habisnya, dan dapat dicukupi kembali pada tingkat yang sama namun terbatas dalam jumlah energi persatuan.\nContohnya : panas bumi, energi air, bioenergi, energi surya, energi angin, energi laut.\n",
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

class WidgetEnergi3 extends StatelessWidget {
  const WidgetEnergi3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Energi tak terbarukan adalah sumber energi yang akan habis jika dieksploitasi secara terus-menerus. Salah satu energi tak terbarukan adalah energi fosil yang disebut juga dengan energi komersial.\n\nContohnya minyak bumi, gas bumi, batu bara, gambut.\n",
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

class WidgetEnergi31 extends StatelessWidget {
  const WidgetEnergi31({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Energi baru adalah sumber energi yang dapat dihasilkan oleh teknologi baru baik yang berasal dari sumber energi terbarukan maupun energi tak terbarukan.\n" +
                "Contohnya batu bara tercairkan, batu bara tergaskan, gas metana batu bara, hidrogen dan nuklir.\n",
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
