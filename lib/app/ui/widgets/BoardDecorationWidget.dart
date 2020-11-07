import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BoardBackground extends StatelessWidget {
  const BoardBackground({Key key, @required this.dataContent})
      : super(key: key);
  final Widget dataContent;
  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage("assets/Icon/board-01-min.png");
    var boxDecoration = BoxDecoration(
      image: DecorationImage(
        image: assetImage,
        fit: BoxFit.fill,
      ),
    );
    return Container(
      decoration: boxDecoration,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: Get.height - context.mediaQueryPadding.top - 20,
      width: Get.width * 0.8,
      child: dataContent,
    );
  }
}
