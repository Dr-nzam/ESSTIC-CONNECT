import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconText extends StatelessWidget {
  final Icon icon;
  final String titre;
  final String sousTitre;
  const IconText(
      {super.key, required this.icon, required this.titre, this.sousTitre=""});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 40,
            width: 40,
            color: const Color(0XFFeef0ff),
            child: icon
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.75,
              child: Text(
                titre,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            sousTitre.isEmpty?
            Container():
            Text(
              sousTitre,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0XFF747688),
              ),
            ),
          ],
        )
      ],
    );
  }
}
