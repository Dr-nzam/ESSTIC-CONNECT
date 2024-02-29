import 'package:esstic_connect/route/app_route.dart';
import 'package:esstic_connect/screen/splash/splash.dart';
import 'package:get/get.dart';

class AppPage {
  static final page = [
    // route accueil
    GetPage(name: AppRoute.splash, page: () => Splash()),
  ];
}
