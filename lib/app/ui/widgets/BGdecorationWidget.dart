import 'package:flutter/material.dart';

class BGContainerWidget extends StatelessWidget {
  const BGContainerWidget({
    Key key,
    @required this.custombar,
    @required this.content,
    @required this.kPaddingTop,
  }) : super(key: key);
  final Widget custombar;
  final Widget content;
  final double kPaddingTop;
  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      image: DecorationImage(
        image: new AssetImage("assets/bg_01.jpg"),
        fit: BoxFit.fill,
      ),
    );
    return Container(
      decoration: boxDecoration,
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: kPaddingTop,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                  child: Stack(
                    children: [
                      custombar,
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(child: content),
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
