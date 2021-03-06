import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/WidgetBackMusic.dart';

class PengembangScreen extends StatefulWidget {
  PengembangScreen({Key key}) : super(key: key);

  @override
  _PengembangScreenState createState() => _PengembangScreenState();
}

class _PengembangScreenState extends State<PengembangScreen> {
  @override
  void initState() {
    precacheImage(new AssetImage("assets/Profile.png"), Get.context);
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
          widgetTitle: "assets/Icon/button__profil_pengembang.png",
          widgetContent: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/Profile.png",
                          height: Get.height * 0.4,
                          width: Get.width * 0.2,
                          alignment: Alignment.topCenter),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text("Nama",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: "Gothic",
                                        )),
                                  ),
                                  Text(" : ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                  Text("Tamara Adhania",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text("NIM",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: "Gothic",
                                        )),
                                  ),
                                  Text(" : ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                  Text("17010024072",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text("Jurusan",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: "Gothic",
                                        )),
                                  ),
                                  Text(" : ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                  Text("Kurikulum dan Teknologi Pendidikan",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text("Falkultas",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                  ),
                                  Text(" : ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                  Text("Ilmu Pendidikan",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text("Email",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: "Gothic",
                                        )),
                                  ),
                                  Text(" : ",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white)),
                                  Text("tamaraadhania@gmail.com",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text("No. Telp",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: "Gothic",
                                        )),
                                  ),
                                  Text(" : ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                  Text("085850893867",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
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
