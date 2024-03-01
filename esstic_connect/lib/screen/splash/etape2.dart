import 'package:esstic_connect/core/buttom_widget/elevate_buttom_widget.dart';
import 'package:esstic_connect/core/buttom_widget/text_buttom_widget.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/niveau_etape_widget.dart';
import 'package:esstic_connect/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Etape2 extends StatelessWidget {
  const Etape2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Image.asset(
                  '${Asset.path}etape2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Événements",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF5669FF)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "La section Événements vous permet de découvrir et de participer aux événements organisés",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF353333)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch ,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: const Row(
                    children: [
                      NiveauEtapeWidget(
                        couleur: Color(0xFFA0A0A0),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      NiveauEtapeWidget(
                        couleur: Color(0xFF5669FF),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      NiveauEtapeWidget(
                        couleur: Color(0xFFA0A0A0),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      NiveauEtapeWidget(
                        couleur: Color(0xFFA0A0A0),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    TextButtonWidget(
                      text: 'Précédent',
                      colorText: Color(0xFFA0A0A0),
                      onPressed: () => Get.back(),
                    ),
                    ElevateButtonWidget(
                      colorButton: Color(0xFF5669FF),
                      text: "Suivant",
                      colorText: Colors.white,
                      onPressed: () => Get.toNamed(AppRoute.etape3),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
