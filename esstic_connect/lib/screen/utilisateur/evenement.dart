import 'package:esstic_connect/core/appbar_widget.dart';
import 'package:esstic_connect/core/cart_event_tournoi.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/formulaire_widjet/search_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Evenement extends StatefulWidget {
  const Evenement({super.key});

  @override
  State<Evenement> createState() => _EvenementState();
}

class _EvenementState extends State<Evenement> {
  TextEditingController controllersearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8f4f4),
      appBar: AppBarWidget(
        title: "Évènements",
        iconAction: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
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

             CartEventTournoi(
              iconAuteur: Icon(Icons.person, color: Color(0XFF5265FF),),
              iconDate: Icon(Icons.calendar_month_outlined, color: Color(0XFF5265FF),),
              iconHeure: Icon(Icons.watch_later_outlined, color: Color(0XFF5265FF),),
              iconLieu: Icon(Icons.location_on_rounded, color: Color(0XFF5265FF),),
              pathImage: "${Asset.path}event1.png",
              date: "10 décembre 2024",
              heure: "16h00 - 21h00",
              lieu: "36 Guild Street Londres, États-Unis",
              nomAuteur: "Nom de l’organisateur",
              titre: "InnovateX",
            )
  
          ],
        ),
      ),
    );
  }
}
