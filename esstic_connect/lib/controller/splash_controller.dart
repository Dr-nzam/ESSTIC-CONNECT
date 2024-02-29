import 'dart:async';
import 'package:esstic_connect/route/app_route.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Timer? timer;
 void movePageSplash() {
    timer = Timer.periodic(const Duration(seconds: 3), (Timer) {
      Get.offNamed(AppRoute.etape1);
    });
  }

/* permet de detruire le Timer lorsque le controlleur n'est 
pas utiliser pour ne pas avoir un comportement inattendu*/
  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }
}
