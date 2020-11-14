import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/controller/PeternakanController.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';

class PeternakanScreen extends StatefulWidget {
  @override
  _PeternakanScreenState createState() => _PeternakanScreenState();
}

class _PeternakanScreenState extends State<PeternakanScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    precacheImage(
        new AssetImage("assets/Icon/btn_pangan-04.png"), Get.context);
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
          widgetTitle: "assets/Icon/menu-button-pertenakan.png",
          widgetContent: Center(
            child: GetX<PeternakanController>(
              initState: (state) =>
                  Get.find<PeternakanController>().initparameter(),
              builder: (controller) {
                print(Get.find<PeternakanController>()
                    .pageIndex
                    .value
                    .toString());
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 40),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Get.find<PeternakanController>().menuList[
                              Get.find<PeternakanController>()
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
                          Obx(() => Get.find<PeternakanController>()
                                      .pageIndex
                                      .value >
                                  0
                              ? GestureDetector(
                                  onTap: () => Get.find<PeternakanController>()
                                      .decrement(),
                                  child: Image.asset("assets/Icon/prev.png",
                                      height: 40, width: 40),
                                )
                              : Container(height: 40, width: 40)),
                          Obx(() => Get.find<PeternakanController>()
                                      .pageIndex
                                      .value <
                                  Get.find<PeternakanController>()
                                          .menuList
                                          .length -
                                      1
                              ? GestureDetector(
                                  onTap: () => Get.find<PeternakanController>()
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

class WidgetPeternakan1 extends StatelessWidget {
  const WidgetPeternakan1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Potensi dan Persebaran Sumber Daya Peternakan\n",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: "FredokaOne",
              wordSpacing: 4,
              color: Colors.white,
            ),
          ),
          Text(
            "Ternak adalah hewan peliharaan yang diperuntukan sebagai penghasil pangan, bahan baku industri, jasa. Indonesia memiliki ternak asli yang merupakan sumber daya genetik seperti sapi bali, sapi peranakan ongole, sapi sumba, sapi maduram kambing etawa, kambing kacang, domba garut.",
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

class WidgetPeternakan2 extends StatelessWidget {
  const WidgetPeternakan2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Table(
            border: TableBorder.all(),
            textBaseline: TextBaseline.alphabetic,
            children: [
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Ternak Besar".toUpperCase(),
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "FredokaOne",
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Ternak Kecil".toUpperCase(),
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "FredokaOne",
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              "Sapi Potong : Jawa Timur, Jawa Tengah, Sulawesi Selatan, NTB.",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "FredokaOne",
                                  color: Colors.white)),
                          Text(
                              "Sapi Perah : Jawa Timur, Jawa Tengah, Jawa Barat.",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "FredokaOne",
                                  color: Colors.white)),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "Kambing : Jawa Tengah, Jawa Timur, Jawa Barat, Lampung.",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "FredokaOne",
                                color: Colors.white)),
                        Text("Domba : Jawa Tengah, Jawa Timur, Jawa Barat.",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "FredokaOne",
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Ternak Unggas".toUpperCase(),
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "FredokaOne",
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Aneka Ternak".toUpperCase(),
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "FredokaOne",
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              "Ayam Petelur : Jawa Timur, Jawa Tengah, Sumatera Utara",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "FredokaOne",
                                  color: Colors.white)),  Text(
                              "Ayam Pedaging : Jawa Timur, Jawa Barat, Jawa Tengah",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "FredokaOne",
                                  color: Colors.white)),
                          Text(
                              "Itik : Jawa Timur, Jawa Barat, Jawa Tengah",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "FredokaOne",
                                  color: Colors.white)),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "Kelinci : Jawa Tengah, Jawa Timur, Jawa Barat.",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "FredokaOne",
                                color: Colors.white)),Text(
                            "Puyuh : Jawa Tengah, Jawa Timur, Yogyakarta, Sumatera Barat.",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "FredokaOne",
                                color: Colors.white)),
                        Text("Merpati : Jawa Tengah, Jawa Timur",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "FredokaOne",
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
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
