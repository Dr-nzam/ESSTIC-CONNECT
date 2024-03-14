import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  final String pathImage;
  final String titre;
  final String sousTitre;
  final String nomAuteur;

  const CardWidget(
      {super.key,
      this.pathImage = '',
      this.titre = '',
      this.nomAuteur = '',
      this.sousTitre = ''});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFf8f4f4),
      elevation: 0,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              width: MediaQuery.of(context).size.width *
                  0.26, // Ajoutez une largeur au conteneur
              height: MediaQuery.of(context).size.height *
                  0.15, // Ajoutez une hauteur au conteneur
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(pathImage), fit: BoxFit.fill),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Text(
                    titre,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF5669FF),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Text(
                    sousTitre,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF353333),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                      child: Icon(
                        Icons.person_2_rounded,
                        color: Colors.white,
                        size: 15,
                      ),
                      backgroundColor: Color(0XFFC4C4C4),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      nomAuteur,
                      style: GoogleFonts.poppins(
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFF2583E),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
