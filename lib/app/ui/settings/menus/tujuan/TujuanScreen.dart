import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/WidgetBackMusic.dart';

class TujuanScreen extends StatefulWidget {
  TujuanScreen({Key key}) : super(key: key);

  @override
  _TujuanScreenState createState() => _TujuanScreenState();
}

class _TujuanScreenState extends State<TujuanScreen> {
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
          widgetTitle: "assets/Icon/button__tujuan.png",
          widgetContent: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("1.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: "Gothic",
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                            "Setelah menggunakan multimedia interaktif siswa kelas XI SMA dapat menjelaskan pengertian ketahanan pangan, bahan industri, serta energi baru dan terbarukan di Indonesia dengan tepat.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: "Gothic",
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2.",
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                            "Setelah menggunakan multimedia interaktif siswa kelas XI SMA dapat mengidentifikasi potensi dan persebaran sumber daya untuk ketahanan pangan, bahan industri, serta energi baru dan terbarukan di Indonesia dengan tepat.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: "Gothic",
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("3.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: "Gothic",
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                            "Setelah menggunakan multimedia interaktif siswa kelas XI SMA dapat menganalisis pengelolaan sumber daya dalam penyediaan bahan pangan, bahan industri, serta energi baru dan terbarukan di Indonesia dengan tepat.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: "Gothic",
                            )),
                      ),
                    ],
                  ),
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
