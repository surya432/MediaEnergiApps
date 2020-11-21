import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/HomeController.dart';
import 'package:mediainteaktifpangan/app/controller/PerkebunanController.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';

class PerkebunanScreen extends StatefulWidget {
  @override
  _PerkebunanScreenState createState() => _PerkebunanScreenState();
}

class _PerkebunanScreenState extends State<PerkebunanScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    precacheImage(
        new AssetImage("assets/Icon/menu-button-perkebunan.png"), Get.context);
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
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: BoardTitleWidget(
          widgetTitle: "assets/Icon/btn_pangan-03.png",
          widgetContent: Center(
            child: GetX<PerkebunanController>(
              initState: (state) =>
                  Get.find<PerkebunanController>().initparameter(),
              builder: (controller) {
                print(Get.find<PerkebunanController>()
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
                          child: Get.find<PerkebunanController>().menuList[
                              Get.find<PerkebunanController>()
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
                          Obx(() => Get.find<PerkebunanController>()
                                      .pageIndex
                                      .value >
                                  0
                              ? GestureDetector(
                                  onTap: () => Get.find<PerkebunanController>()
                                      .decrement(),
                                  child: Image.asset("assets/Icon/prev.png",
                                      height: 40, width: 40),
                                )
                              : Container(height: 40, width: 40)),
                          Obx(() => Get.find<PerkebunanController>()
                                      .pageIndex
                                      .value <
                                  Get.find<PerkebunanController>()
                                          .menuList
                                          .length -
                                      1
                              ? GestureDetector(
                                  onTap: () => Get.find<PerkebunanController>()
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

class WidgetPekebunan1 extends StatelessWidget {
  const WidgetPekebunan1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Potensi dan Persebaran Sumber Daya Pekebunan\n",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              wordSpacing: 4,
              color: Colors.white,
            ),
          ),
          Text(
            "Perkebunan adalah segala kegiatan pengelolaan SDA (barang), SDM (jasa), sarana produksi, alat dan mesin, budi daya, panen, pengolahan, dan pemasaran terkait tanaman perkebunan." +
                "Kriteria khusus perkebunan :\n" +
                "a. Pengusahaan perkebunan dilakukan dalam bentuk usaha perkebunan rakyat atau perkebunan besar\n" +
                "b. Pengusahaan perkebunan besar harus melalui kerja sama kemitraan dengan usaha perkebunan rakyat secara berkelanjutan\n" +
                "c. Arah pengembangan usaha perkebunan dilaksanakan dalam bingkai prinsip pembangunan berkelanjutan",
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

class WidgetPekebunan2 extends StatelessWidget {
  const WidgetPekebunan2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Perkebunan menurut jenis usaha perkebunannya :\n",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              wordSpacing: 4,
              color: Colors.white,
            ),
          ),
          Text(
            "a. Usaha Budi Daya Tanaman Perkebunan adalah pengusaha tanaman perkebunan yang meliputi kegiatan pratanam, penanaman, pemelihaaan tanaman, pemanen dan sortasi\n" +
                "b. Usaha Industri Pengolahan Hasil Perkebunan adalah kegiatan penanganan dan pemrosesan yang dilakukan terhadap hasil tanaman perkebunan",
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

class WidgetPekebunan21 extends StatelessWidget {
  const WidgetPekebunan21({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Perkebunan menurut pengelolaannya :\n",
            style: TextStyle(
              fontSize: 16,
              wordSpacing: 4,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
          Text(
            "a. Perkebunan besar, dikelola perusahaan berbadan hukum secara komersial dengan lahan yang luas, modal besar dan teknologi yang maju. Biasanya mengelola kelapa sawit, teh, tebu, cokelat\n"
            "b. Perkebunan kecil, dikelola rakyat dengan luas lahan dan modal yang terbatas serta teknologi yang sederhana. Contohnya kopi, cengkeh, karet.",
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

class WidgetPekebunan3 extends StatelessWidget {
  const WidgetPekebunan3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Perkebunan menurut jenis tanamannya :\n",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              wordSpacing: 4,
              color: Colors.white,
            ),
          ),
          Text(
            "a. Perkebunan tanaman musim (tanaman umur pendek). Contohnya tembakau, tebu, sereh wangi, jarak kepyer, nilam",
            textAlign: TextAlign.justify,
            style: TextStyle(
              // fontSize: 13,
              wordSpacing: 2,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
          Center(
              child: Container(
                  child: Image.asset(
            'assets/perkebunan-img1.jpg',
            height: Get.height * .6,
            width: Get.width * .6,
          ))),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}

class WidgetPekebunan31 extends StatelessWidget {
  const WidgetPekebunan31({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "b. Perkebunan tanaman musim (tanaman umur pendek). Contohnya tembakau, tebu, sereh wangi, jarak kepyer, nilam",
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

class WidgetPekebunan4 extends StatelessWidget {
  const WidgetPekebunan4({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
              child: Container(
                  child: Column(
            children: [
              Text(
                "b. Perkebunan tanaman musim (tanaman umur pendek). Contohnya tembakau, tebu, sereh wangi, jarak kepyer, nilam",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontSize: 13,
                  wordSpacing: 2,
                  color: Colors.white,
                  fontFamily: "FredokaOne",
                ),
              ),
              Image.asset(
                'assets/perkebunan-img2.jpg',
                height: Get.height,
                width: Get.width,
              ),
            ],
          ))),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}

class WidgetPekebunan5 extends StatelessWidget {
  const WidgetPekebunan5({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "\n\nPersebaran perkebunan menurut zona iklim (Franz Junghuhn) :\n" +
                "a. Zona panas (dataran rendah) yaitu kelapa, tebu, dan jagung\n" +
                "b. Zona batas pantai dengan ketingian 700 meter diatas permukaan laut yaitu tebu, karet dan kopi\n" +
                "c. Zona dengan ketinggian 700-1.500 meter diatas permukaan laut yaitu tanaman hortikultura, teh, kina",
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
