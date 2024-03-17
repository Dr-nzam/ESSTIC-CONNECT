import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailEmission extends StatefulWidget {
  const DetailEmission({super.key});

  @override
  State<DetailEmission> createState() => _DetailEmissionState();
}

class _DetailEmissionState extends State<DetailEmission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Détails de l’émission",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          children: [
            Text(
              "Vidéo",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF5265FF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
