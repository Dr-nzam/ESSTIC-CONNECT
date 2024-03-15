import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/icon_text.dart';
import 'package:esstic_connect/core/image_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailTournoi extends StatefulWidget {
  const DetailTournoi({super.key});

  @override
  State<DetailTournoi> createState() => _DetailTournoiState();
}

class _DetailTournoiState extends State<DetailTournoi> {
  @override
  Widget build(BuildContext context) {
    String text =
        "La Division Vie Etudiante du Crous organise un Tournoi de Football sur le campus de la Bouloie de Besançon.Compétition avec un trophée pour l’équipe gagnanteInscription par équipe de 6 joueurs (gardien inclus) ou individuellement";

    return Scaffold(
      body: ListView(
        children: [
          ImageDetailWidget(
              image: "${Asset.path}etape1.jpg", titre: "Détails du tournoi"),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Tournoi de Football",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                const IconText(
                  icon: Icon(
                    Icons.calendar_month,
                    color: Color(0XFF5265FF),
                  ),
                  titre: "18 mars 2024",
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                const IconText(
                  icon: Icon(
                    Icons.location_on_rounded,
                    color: Color(0XFF5265FF),
                  ),
                  titre: "Rue Laplace 25000 Besançon ",
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                const IconText(
                  icon: Icon(
                    Icons.group,
                    color: Color(0XFF5265FF),
                  ),
                  titre: "30 participants",
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                const IconText(
                  icon: Icon(
                    Icons.person_outline_sharp,
                    color: Color(0XFF5265FF),
                  ),
                  titre: "Nom de l’organisateur",
                  sousTitre: "Organisteur",
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  "À propos du tournoi",
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF5265FF),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  text,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
