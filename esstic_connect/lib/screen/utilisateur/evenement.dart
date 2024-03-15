import 'package:esstic_connect/controller/user_controller/evenement_controller.dart';
import 'package:esstic_connect/core/appbar_widget.dart';
import 'package:esstic_connect/core/cart_event_tournoi.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/formulaire_widjet/search_form_widget.dart';
import 'package:esstic_connect/data/utilisateur_model.dart';
import 'package:esstic_connect/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Evenement extends StatefulWidget {
  const Evenement({super.key});

  @override
  State<Evenement> createState() => _EvenementState();
}

class _EvenementState extends State<Evenement> {
  TextEditingController controllersearch = TextEditingController();
  final EvenementController controller = EvenementController();

  @override
  void initState() {
    super.initState();
    controller.getAllEvenement();
  }

  @override
  Widget build(BuildContext context) {
    final EvenementModel eventModel = Get.find();
    return Scaffold(
      backgroundColor: const Color(0xFFf8f4f4),
      appBar: AppBarWidget(
        title: "Évènements",
        iconAction: const Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      body: Obx(
        () => SingleChildScrollView(
          padding: const EdgeInsets.only(left: 15, right: 15),
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
              controller.loading.value == true?
             const CircularProgressIndicator(
                color: Color(0XFF5669FF),
              ):
              Column(
                children: [
                  for(int i=0; i<eventModel.evenement.length; i++)
                  CartEventTournoi(
                    onTap: ()=> Get.toNamed(AppRoute.detailEvent),
                    iconAuteur: const Icon(
                      Icons.person,
                      color: Color(0XFF5265FF),
                    ),
                    iconDate: const Icon(
                      Icons.calendar_month_outlined,
                      color: Color(0XFF5265FF),
                    ),
                    iconHeure: const Icon(
                      Icons.watch_later_outlined,
                      color: Color(0XFF5265FF),
                    ),
                    iconLieu: const Icon(
                      Icons.location_on_rounded,
                      color: Color(0XFF5265FF),
                    ),
                    pathImage: "${Constants.baseUrl}${eventModel.evenement[i]['image']}",
                    date: "${eventModel.evenement[i]['date']}",
                    heure: "${eventModel.evenement[i]['heureDebut']} - ${eventModel.evenement[i]['heureFin']}",
                    lieu: "${eventModel.evenement[i]['lieu']}",
                    nomAuteur: "${eventModel.evenement[i]['user']['email']}",
                    titre: "${eventModel.evenement[i]['nom']}",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
