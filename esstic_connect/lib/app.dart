import 'package:esstic_connect/data/authentification_model.dart';
import 'package:esstic_connect/data/utilisateur_model.dart';
import 'package:esstic_connect/route/app_page.dart';
import 'package:esstic_connect/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});
   

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final UserModel user = Get.put(UserModel());
    final InformationModel infoModel = Get.put(InformationModel());
    final EvenementModel eventModel = Get.put(EvenementModel());
    final EmissionModel emissionModel= Get.put(EmissionModel());
    final TournoiModel tournoiModel = Get.put(TournoiModel());
    return GetMaterialApp(
        theme: ThemeData(
          primaryColor: const Color(0xFF5669FF),
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoute.splash,
        getPages: AppPage.page,
      );
  }
}