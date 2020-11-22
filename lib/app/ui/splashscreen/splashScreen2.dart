import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash2Screen extends StatefulWidget {
  Splash2Screen({Key key}) : super(key: key);

  @override
  _Splash2ScreenState createState() => _Splash2ScreenState();
}

class _Splash2ScreenState extends State<Splash2Screen>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeInCubic);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        // controller.forward();
        // Get.off(
        //   Home(),
        //   transition: Transition.zoom,
        //   duration: new Duration(milliseconds: 200),
        // );
        Get.toNamed("/HomeScreen");
      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double height = Get.height * 0.4;
    double width = Get.width * 0.7;
    return Container(
      color: Colors.white,
      child: FadeTransition(
        opacity: animation,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/tp.png',
                height: height,
                width: width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
