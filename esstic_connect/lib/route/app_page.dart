import 'package:esstic_connect/binding/splash_binding.dart';
import 'package:esstic_connect/route/app_route.dart';
import 'package:esstic_connect/screen/core.dart';
import 'package:esstic_connect/screen/splash/etape1.dart';
import 'package:esstic_connect/screen/splash/etape2.dart';
import 'package:esstic_connect/screen/splash/etape3.dart';
import 'package:esstic_connect/screen/splash/etape4.dart';
import 'package:esstic_connect/screen/splash/splash.dart';
import 'package:esstic_connect/screen/utilisateur/emission.dart';
import 'package:esstic_connect/screen/utilisateur/evenement.dart';
import 'package:esstic_connect/screen/utilisateur/informations.dart';
import 'package:esstic_connect/screen/utilisateur/tournoi.dart';
import 'package:get/get.dart';

class AppPage {
  static final page = [
    // route accueil
    GetPage(name: AppRoute.splash, page: () => Splash(), binding: SplashBinding()),
    GetPage(name: AppRoute.etape1, page: () => Etape1()),
    GetPage(name: AppRoute.etape2, page: () => Etape2()),
    GetPage(name: AppRoute.etape3, page: () => Etape3()),
    GetPage(name: AppRoute.etape4, page: () => Etape4()),

    GetPage(name: AppRoute.core, page: () => Core()),

    GetPage(name: AppRoute.information, page: () => Information()),
    GetPage(name: AppRoute.evenement, page: () => Evenement()),
    GetPage(name: AppRoute.emission, page: () => Emission()),
    GetPage(name: AppRoute.tournoi, page: () => Tournoi()),
  ];
}
