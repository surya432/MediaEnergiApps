import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/PerikananController.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/WidgetBackMusic.dart';

class PerikananScreen extends StatefulWidget {
  @override
  _PerikananScreenState createState() => _PerikananScreenState();
}

class _PerikananScreenState extends State<PerikananScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    precacheImage(new AssetImage("assets/Icon/btn_pangan-02.png"), Get.context);
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
          widgetTitle: "assets/slide/btn_pangan-02.png",
          widgetContent: Center(
            child: GetX<PerikananController>(
              initState: (state) =>
                  Get.find<PerikananController>().initparameter(),
              builder: (controller) {
                print(
                    Get.find<PerikananController>().pageIndex.value.toString());
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
                          child: Get.find<PerikananController>().menuList[
                              Get.find<PerikananController>()
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
                          Obx(() => Get.find<PerikananController>()
                                      .pageIndex
                                      .value >
                                  0
                              ? GestureDetector(
                                  onTap: () => Get.find<PerikananController>()
                                      .decrement(),
                                  child: Image.asset("assets/Icon/prev.png",
                                      height: 40, width: 40),
                                )
                              : Container(height: 40, width: 40)),
                          Obx(() => Get.find<PerikananController>()
                                      .pageIndex
                                      .value <
                                  Get.find<PerikananController>()
                                          .menuList
                                          .length -
                                      1
                              ? GestureDetector(
                                  onTap: () => Get.find<PerikananController>()
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
        custombar: WidgetAppBarBackMusic(),
      ),
    );
  }
}

class WidgetPerikanan1 extends StatelessWidget {
  const WidgetPerikanan1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Potensi Dan Persebaran Sumber Daya Perikanan\n",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: "FredokaOne",
              wordSpacing: 4,
              color: Colors.white,
            ),
          ),
          Text(
            "a. Perikanan Tangkap\n" +
                "Kegiatan memperoleh ikan di perairan umum dan laut yang tidak dalam keadaan di budidaya, termasuk kegiatan yang menggunakan kapal untuk memuat, mengangkut, menyimpan, mengelola.\n" +
                "Perikanan laut tertinggi ditemukan di Provinsi Maluku dan Sumatera Utara, dengan jenis ikan pelagis kecil dan besar, ikan demersal, udang, lobster, kepiting.\n" +
                "Perikanan perairan umum tertinggi pada Provinsi Kalimantan Selatan dan Sumatera Selatan, dengan jenis ikan nila, tawes mujair dan gabus",
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

class WidgetPerikanan2 extends StatelessWidget {
  const WidgetPerikanan2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "b. Perikanan Budi Daya\n" +
                "Kegiatan memproduksi biota (organisme) akuatik di lingkungan terkendali dalam rangka mendapatkan keuntungan (profit), dikelompokan atas :\n",
            textAlign: TextAlign.justify,
            style: TextStyle(
              // fontSize: 13,
              wordSpacing: 2,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
          Table(
            border: TableBorder.all(),
            textBaseline: TextBaseline.alphabetic,
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Budi Daya Laut : rumput laut, mutiara, kerapu, kerang hijau. Dihasilkan di  NTT, Sulawesi Selatan, Sulawesi Tengah",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: "FredokaOne",
                          color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Budi Daya Keramba : ikan mas, nila, tawes. Dihasilkan di Jambi",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: "FredokaOne",
                          color: Colors.white)),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Budi Daya Tambak : ikan bandeng, udang vaname, ikan nila. Dihasilkan di Sulawesi Selatan",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "FredokaOne",
                          color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Budi Daya Jaring Apung : ikan nila, lele, patin. Dihasilkan di Jawa Barat",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "FredokaOne",
                          color: Colors.white)),
                )
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Budi Daya Kolam : ikan lele, gurami, nila. Dihasilkan di Jawa Barat",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "FredokaOne",
                          color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Budi Daya Sawah : bandeng, udang vaname, tawes. Dihasilkan di Jawa Barat",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "FredokaOne",
                          color: Colors.white)),
                )
              ]),
            ],
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}
