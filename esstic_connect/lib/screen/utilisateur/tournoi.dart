import 'package:esstic_connect/controller/user_controller/tournoi_controller.dart';
import 'package:esstic_connect/core/appbar_widget.dart';
import 'package:esstic_connect/core/cart_event_tournoi.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/formulaire_widjet/search_form_widget.dart';
import 'package:esstic_connect/data/utilisateur_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tournoi extends StatefulWidget {
  const Tournoi({super.key});

  @override
  State<Tournoi> createState() => _TournoiState();
}

class _TournoiState extends State<Tournoi> {
  TextEditingController controllersearch = TextEditingController();
  final TournoiController controller = TournoiController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getAllTournoi();
  }
  @override
  Widget build(BuildContext context) {
    final TournoiModel tournoimodel = Get.find();
    return Scaffold(
      backgroundColor: Color(0xFFf8f4f4),
      appBar: AppBarWidget(
        title: "Tournois",
        iconAction: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      body: Obx(() => SingleChildScrollView(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(
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
            controller.loading.value == true?
            CircularProgressIndicator(
              color: Color(0XFF5669FF),
            ):

             Column(
               children: [
                for(int i =0; i<tournoimodel.tournoi.length; i++)
                 CartEventTournoi(
                  iconAuteur: Icon(Icons.person, color: Color(0XFF5265FF),),
                  iconDate: Icon(Icons.calendar_month_outlined, color: Color(0XFF5265FF),),
                  // icon heure represente les groupe puisque c'est le meme widget qu'evenement que j'utilise
                  // bien l'icon du groupe 
                  iconHeure: Icon(Icons.group, color: Color(0XFF5265FF),),
                  iconLieu: Icon(Icons.location_on_rounded, color: Color(0XFF5265FF),),
                  pathImage: "${Constants.baseUrl}${tournoimodel.tournoi[i]['image']}",
                  date: "${tournoimodel.tournoi[i]['date']}",
                  // heure represente les groupes(particiapants) puisque c'est le meme widget qu'evenement que j'utilise
                  heure: "${tournoimodel.tournoi[i]['participant']} participants",
                  lieu: "${tournoimodel.tournoi[i]['lieu']}",
                  nomAuteur: "${tournoimodel.tournoi[i]['user']['email']}",
                  titre: "${tournoimodel.tournoi[i]['nom']}",
                             ),
               ],
             )
  
          ],
        ),
      ),
    ),);
  }
}