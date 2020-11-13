import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/home/homeScreen.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';

class QuizDoneScreen extends StatelessWidget {
  double tops = Get.height * .62;

  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage("assets/Icon/popup-11.png");
    var boxDecoration = BoxDecoration(
      image: DecorationImage(
        image: assetImage,
        fit: BoxFit.fill,
      ),
    );

    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: Center(
          child: Container(
            padding: const EdgeInsets.only(top: 20),
            height: 254,
            width: 254,
            decoration: boxDecoration,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(25),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 55),
                      child: Text(
                        Get.arguments!= null?Get.arguments.toString():"0",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: GestureDetector(
                    onTap: () => Get.offAll(Home()),
                    child: Image.asset(
                      "assets/Icon/button-closed.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  right: 10,
                ),
              ],
            ),
          ),
        ),
        custombar: Container(),
      ),
    );
  }
}
