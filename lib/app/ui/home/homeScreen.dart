import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/materi/Materi_Screen.dart';
import 'package:mediainteaktifpangan/app/ui/settings/SettingScreen.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    precacheImage(new AssetImage("assets/bg_01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/Icon/board-01.png"), Get.context);

    super.initState();
  }

  var imagesBg = new AssetImage('assets/bg_01.jpg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        custombar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => {},
              child: Image.asset("assets/Icon/button-music.png",
                  height: 60, width: 60),
            ),
            GestureDetector(
              onTap: () {
                SystemNavigator.pop();
              },
              child: Image.asset("assets/Icon/button-closed.png",
                  height: 60, width: 60),
            ),
          ],
        ),
        content: Container(
          width: Get.width * 0.7,
          margin: EdgeInsets.only(top: context.mediaQueryPadding.top),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Icon/title-01.png', fit: BoxFit.fill),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                        child: Image.asset('assets/Icon/button-home.png',
                            height: 60, width: 60),
                        onTap: () => Get.to(SettingScreen(),
                            transition: Transition.zoom,
                            duration: Duration(milliseconds: 500)),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      GestureDetector(
                        child: Image.asset('assets/Icon/button-01.png',
                            height: 80, width: 80),
                        onTap: () => Get.to(MateriScreen(),
                            transition: Transition.zoom,
                            duration: Duration(milliseconds: 500)),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      GestureDetector(
                        child: Image.asset('assets/Icon/button-13.png',
                            height: 60, width: 60),
                        onTap: () => Get.toNamed("/QuizScreen"),
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
