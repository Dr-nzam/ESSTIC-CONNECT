import 'package:esstic_connect/core/appbar_widget.dart';
import 'package:esstic_connect/core/card_emissions.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/formulaire_widjet/search_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Emission extends StatefulWidget {
  const Emission({super.key});

  @override
  State<Emission> createState() => _EmissionState();
}

class _EmissionState extends State<Emission> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controllersearch = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xFFf8f4f4),
      appBar: AppBarWidget(
        title: "Émissions",
        iconAction: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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

              CardEmissions(
                  image: "${Asset.path}emission1.png",
                  titre: "Dimanche politique",
                  nomAuteur: "Nom de l’auteur"),
                  CardEmissions(
                  image: "${Asset.path}emission1.png",
                  titre: "Dimanche politique",
                  nomAuteur: "Nom de l’auteur"),
                  CardEmissions(
                  image: "${Asset.path}emission1.png",
                  titre: "Dimanche politique",
                  nomAuteur: "Nom de l’auteur"),

              
            ],
          ),
        ),
      ),
    );
  }
}
