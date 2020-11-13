import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardDecorationWidget.dart';

class BoardTitleWidget extends StatelessWidget {
  const BoardTitleWidget({
    Key key,
    @required this.widgetContent,
    @required this.widgetTitle,
  }) : super(key: key);
  final Widget widgetContent;
  final String widgetTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.isTablet ? Get.height * 0.7 : Get.height * 0.8,
      child: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: context.isTablet ? Get.height * 0.7 : Get.height * 0.8,
            padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: context.isTablet
                    ? Get.height * 0.1 / 2
                    : Get.height * 0.2 / 2),
            child: BoardBackground(
              dataContent: widgetContent,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                widgetTitle,
                height: context.isTablet ? Get.height * 0.1 : Get.height * 0.2,
                width: Get.width * 0.3,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
