import 'package:esstic_connect/controller/user_controller/emission_controller.dart';
import 'package:esstic_connect/core/appbar_widget.dart';
import 'package:esstic_connect/core/card_emissions.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/formulaire_widjet/search_form_widget.dart';
import 'package:esstic_connect/data/utilisateur_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Emission extends StatefulWidget {
  const Emission({super.key});

  @override
  State<Emission> createState() => _EmissionState();
}

class _EmissionState extends State<Emission> {
  TextEditingController controllersearch = TextEditingController();
  final EmissiontController controller = EmissiontController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getAllEmission();
  }

  @override
  Widget build(BuildContext context) {
    final EmissionModel emissionModel = Get.find();
    return Scaffold(
      backgroundColor: Color(0xFFf8f4f4),
      appBar: AppBarWidget(
        title: "Émissions",
        iconAction: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
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
                    preffixIcon: Icon(
                      Icons.search_rounded,
                      color: Color(0XFF5669FF),
                    ),
                    placeholder: "Recherche",
                    suffixIcon: Icon(
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
                          for (int i = 0;
                              i < emissionModel.emission.length;
                              i++)
                            CardEmissions(
                                image:
                                    "${Constants.baseUrl}${emissionModel.emission[i]['image']}",
                                titre: "${emissionModel.emission[i]['nom']}",
                                nomAuteur:
                                    "${emissionModel.emission[i]['user']['email']}"),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
