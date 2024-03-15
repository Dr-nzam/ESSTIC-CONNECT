import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/icon_text.dart';
import 'package:esstic_connect/core/image_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailEvenement extends StatefulWidget {
  const DetailEvenement({super.key});

  @override
  State<DetailEvenement> createState() => _DetailEvenementState();
}

class _DetailEvenementState extends State<DetailEvenement> {
  @override
  Widget build(BuildContext context) {
    String text =
        "Le monde de l'informatique est en constante évolution, et il est important de rester à la pointe des dernières tendances.C'est pourquoi nous vous invitons à participer à notre événement sur l'avenir de l'informatique.";

    return Scaffold(
      // backgroundColor: Colors.white,
      body: ListView(
        children: [
          ImageDetailWidget(
              image: "${Asset.path}etape1.jpg",
              titre: "Détails de l'évènement"),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "InnovateX: L'avenir de l'informatique",
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
                  titre: "10 décembre 2023",
                  sousTitre: "16h00 - 21h00",
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                const IconText(
                  icon: Icon(
                    Icons.location_on_rounded,
                    color: Color(0XFF5265FF),
                  ),
                  titre: "36 Guild Street Londres, États-Unis ",
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
                  "À propos de l'événement",
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
