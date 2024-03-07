import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartEventTournoi extends StatelessWidget {
  final Icon? iconDate;
  final Icon? iconHeure;
  final Icon? iconLieu;
  final Icon? iconAuteur;
  final String? date;
  final String? heure;
  final String? lieu;
  final String? nomAuteur;
  final String? pathImage;
  final String? titre;
  const CartEventTournoi(
      {super.key,
      this.iconDate,
      this.iconHeure,
      this.iconLieu,
      this.iconAuteur,
      this.date,
      this.heure,
      this.lieu,
      this.nomAuteur,
      this.pathImage,
      this.titre});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        padding: EdgeInsets.all(15),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  // color: Colors.red,
                  width: 250,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(pathImage!), fit: BoxFit.cover),
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                titre!,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF000000),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xFFeef0ff),
                        child: iconDate,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        date!,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF747688),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xFFeef0ff),
                          child: iconHeure),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        heure!,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF747688),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xFFeef0ff),
                        child: iconLieu,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        lieu!,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF747688),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xFFeef0ff),
                        child: iconAuteur,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nomAuteur!,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFFF2583E),
                            ),
                          ),
                          Text(
                            "Organisateur",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF747688),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
