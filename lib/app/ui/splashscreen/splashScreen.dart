import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/splashscreen/splashScreen2.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
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
        //   controller.reverse();
        // } else if (status == AnimationStatus.dismissed) {
        // controller.forward();
        Get.off(
          Splash2Screen(),
          // transition: Transition.zoom,
          // duration: new Duration(milliseconds: 200),
        );
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
                'assets/Unesa.png',
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
