import 'package:esstic_connect/controller/splash_controller.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/data/secure_stokage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Splash extends StatelessWidget {
  Splash({super.key});
  SplashController controller = Get.find<SplashController>();
  final SecureStorage secureStorage = SecureStorage();

  Future<void> init() async {
    String? token = await fetchToken();
    String? firstConnect = await fetchFirstConnect();
    controller.movePageSplash(token!, firstConnect!);
  }

  Future<String?> fetchToken() async {
    String? token = await secureStorage.getToken();
    return token ?? '';
  }
  Future<String?> fetchFirstConnect() async {
    String? firstConnect = await secureStorage.getFirstInstall();
    return firstConnect ?? '';
  }
  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      body: Center(
        child: Image.asset("${Asset.path}logo.png"),
      ),
    );
  }
}
