import 'dart:async';
import 'package:esstic_connect/data/authentification_model.dart';
import 'package:esstic_connect/data/secure_stokage.dart';
import 'package:esstic_connect/provider/authentification_provider.dart';
import 'package:esstic_connect/route/app_route.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  bool loading = false.obs.value;
  final UserModel user = Get.put(UserModel());

  final AuthentificationProvider _provider = AuthentificationProvider();
  final SecureStorage secureStorage = SecureStorage();
  Future<void> movePageSplash(String token, String firstconnect) async {
    loading = true;
    var response = await _provider.infoUseGet(token);
    if (!response.status.hasError) {
      loading = false;
      if (response.statusCode == 200) {
        List don = [response.body];
        user.donnees.value = don;
        loading = false;
        print(user.donnees);
        print("toto");
          Get.offNamed(AppRoute.core);
      }
    } else {
      loading = false;
      if (firstconnect == "true") {
        
        Get.offNamed(AppRoute.etape1);
      } else {
        Get.offNamed(AppRoute.core);
      }
    }
  }

//   Timer? timer;
//  void movePageSplash() {
//     timer = Timer.periodic(const Duration(seconds: 3), (Timer) {
//       Get.offNamed(AppRoute.etape1);
//     });
//   }

// /* permet de detruire le Timer lorsque le controlleur n'est
// pas utiliser pour ne pas avoir un comportement inattendu*/
//   @override
//   void onClose() {
//     timer?.cancel();
//     super.onClose();
//   }
}
