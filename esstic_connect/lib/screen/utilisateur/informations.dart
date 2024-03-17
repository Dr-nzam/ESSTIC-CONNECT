import 'package:esstic_connect/controller/user_controller/information_controller.dart';
import 'package:esstic_connect/core/card_widget.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/formulaire_widjet/search_form_widget.dart';
import 'package:esstic_connect/data/authentification_model.dart';
import 'package:esstic_connect/data/utilisateur_model.dart';
import 'package:esstic_connect/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:esstic_connect/core/appbar_widget.dart';
import 'package:get/get.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  TextEditingController controllersearch = TextEditingController();
  final InformationController controller = InformationController();
  final UserModel user = Get.find();

  @override
  void initState() {
    super.initState();
    controller.getAllInformation();
  }

  @override
  Widget build(BuildContext context) {
    final InformationModel infomodel = Get.find();
    return Scaffold(
      backgroundColor: const Color(0xFFf8f4f4),
      appBar: AppBarWidget(
        title: "Informations",
        iconAction: const Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      body: Obx(
        () => SingleChildScrollView(
          padding: const EdgeInsets.only(left: 15, right: 4),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: SearchFormWidget(
                  controller: controllersearch,
                  preffixIcon: const Icon(
                    Icons.search_rounded,
                    color: Color(0XFF5669FF),
                  ),
                  placeholder: "Recherche",
                  suffixIcon: const Icon(
                    Icons.search_rounded,
                    color: Color(0XFF5669FF),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              controller.loading.value == true
                  ? const CircularProgressIndicator(
                      color: Color(0XFF5669FF),
                    )
                  : Column(
                      children: [
                        for (int i = 0; i < infomodel.info.length; i++)
                          CardWidget(
                            onTap: () => Get.toNamed(AppRoute.detailInfo,
                                arguments: {"id": infomodel.info[i]['id']}),
                            pathImage:
                                "${Constants.baseUrl}${infomodel.info[i]['image']}",
                            titre: "${infomodel.info[i]['titre']}",
                            sousTitre:
                                "${infomodel.info[i]['description'].length > 220 ? infomodel.info[i]['description'].substring(0, 220) : infomodel.info[i]['description']}",
                            nomAuteur: "${infomodel.info[i]['user']['email']}",
                          ),
                      ],
                    ),
            ],
          ),
        ),
      ),
      floatingActionButton: user.donnees.isEmpty
          ? null
          : FloatingActionButton(
              mini: true,
              onPressed: () {
                Get.toNamed(AppRoute.addInfo);
              },
              backgroundColor: const Color(0XFF5669FF),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
    );
  }
}
