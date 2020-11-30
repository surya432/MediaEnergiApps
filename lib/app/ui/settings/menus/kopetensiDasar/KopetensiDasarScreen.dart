import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/WidgetBackMusic.dart';

class KopetensiDasarScreen extends StatefulWidget {
  KopetensiDasarScreen({Key key}) : super(key: key);

  @override
  _KopetensiDasarScreenState createState() => _KopetensiDasarScreenState();
}

class _KopetensiDasarScreenState extends State<KopetensiDasarScreen> {
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
        content: BoardTitleWidget(
          widgetTitle: "assets/Icon/button__kompetensi_dasar.png",
          widgetContent: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              child: Table(
                border: TableBorder.all(),
                textBaseline: TextBaseline.alphabetic,
                children: [
                  TableRow(children: [
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Kompetensi Dasar',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Gothic",
                                color: Colors.white)),
                      ),
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Indikator',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Gothic",
                                color: Colors.white)),
                      )
                    ]),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "3.4 Menganalisis ketahanan pangan nasional, penyediaan bahan industri, serta potensi energi baru dan terbarukan di Indonesia",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Gothic",
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                              "•	Menjelaskan pengertian ketahanan pangan, bahan industri, serta energi baru dan terbarukan",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Gothic",
                                  color: Colors.white)),
                          Text(
                              "•	Mengidentifikasi potensi dan persebaran sumber daya untuk ketahanan pangan nasional. ",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Gothic",
                                  color: Colors.white)),
                          Text(
                              "•	Mengidentifikasi potensi dan persebaran sumber daya untuk penyediaan bahan industri. ",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Gothic",
                                  color: Colors.white)),
                          Text(
                              "•	Mengidentifikasi potensi dan persebaran sumber daya untuk penyediaan energi baru dan terbarukan. ",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Gothic",
                                  color: Colors.white)),
                          Text(
                              "•	Menganalisis pengelolaan sumber daya dalam penyediaan bahan pangan, bahan industri, serta energi baru dan terbarukan di indonesia.",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Gothic",
                                  color: Colors.white)),
                        ],
                      ),
                    )
                  ]),
                  // TableRow(children: [
                  //   // Padding(
                  //   //   padding: const EdgeInsets.all(8.0),
                  //   //   child: Text(
                  //   //       "4.4 Membuat laporan persebaran ketahanan pangan nasional, bahan industri, serta energi baru dan terbarukan di Indonesia.",
                  //   //       style: TextStyle(
                  //   //           fontSize: 12,
                  //   //           fontFamily: "Gothic",
                  //   //           color: Colors.white)),
                  //   // ),
                  //   Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Container(),
                  //   ),
                  //   Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Text(
                  //         "•	Melaporkan hasil analisis data dan informasi terkait ketahanan pangan, industri, serta energi baru dan terbarukan dalam bentuk tulisan dilengkapi tabel dan grafik",
                  //         style: TextStyle(
                  //             fontSize: 12,
                  //             fontFamily: "Gothic",
                  //             color: Colors.white)),
                  //   )
                  // ]),
                ],
              ),
            ),
          ),
        ),
        custombar: WidgetAppBarBackMusic(),
      ),
    );
  }
}
