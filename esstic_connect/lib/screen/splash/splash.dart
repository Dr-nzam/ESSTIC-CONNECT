import 'package:esstic_connect/controller/splash_controller.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Splash extends StatelessWidget {
  Splash({super.key});
  SplashController controller = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    controller.movePageSplash();
    return Scaffold(
      body: Center(
        child: Image.asset("${Asset.path}logo.png"),
      ),
    );
  }
}
