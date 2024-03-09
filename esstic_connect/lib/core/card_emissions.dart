import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardEmissions extends StatelessWidget {
  final String? image;
  final String? titre;
  final String? nomAuteur;
  const CardEmissions(
      {super.key,
      required this.image,
      required this.titre,
      required this.nomAuteur});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        margin: EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        color: Colors.white,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  image!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titre!,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF000000),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_circle_fill_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.mic,
                      color: Colors.blue,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFC4C4C4),
                      radius: 10,
                      child: Icon(
                        Icons.person,
                        size: 17,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      nomAuteur!,
                      style: GoogleFonts.poppins(
                        fontSize: 8.5,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFF2583E),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
