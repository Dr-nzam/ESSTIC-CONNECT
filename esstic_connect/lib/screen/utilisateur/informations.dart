import 'package:esstic_connect/core/card_widget.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/formulaire_widjet/search_form_widget.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esstic_connect/core/appbar_widget.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';


class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  TextEditingController controllersearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8f4f4),
      appBar: AppBarWidget(
        title: "Informations",
        iconAction: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15, right: 4),
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
           const CardWidget(
              pathImage: "${Asset.path}image1.png",
              titre:
                  "Le président ukrainien Zelensky à la BBC : L'argent du sang est payé.",
                  sousTitre: "Le président ukrainien Volodymyr Zelensky a accordé une interview à la BBC dans laquelle il a déclaré que \"l'argent du sang est payé\" pour le gaz russe...",
                  nomAuteur: "armel",
            ),
            CardWidget(
              pathImage: "${Asset.path}image2.png",
              titre:
                  "Le président ukrainien Zelensky à la BBC : L'argent du sang est payé.",
                  sousTitre: "Le président ukrainien Volodymyr Zelensky a accordé une interview à la BBC dans laquelle il a déclaré que \"l'argent du sang est payé\" pour le gaz russe...",
                  nomAuteur: "armel",
            ),
            CardWidget(
              pathImage: "${Asset.path}image3.png",
              titre:
                  "Le président ukrainien Zelensky à la BBC : L'argent du sang est payé.",
                  sousTitre: "Le président ukrainien Volodymyr Zelensky a accordé une interview à la BBC dans laquelle il a déclaré que \"l'argent du sang est payé\" pour le gaz russe...",
                  nomAuteur: "armel",
            ),
            CardWidget(
              pathImage: "${Asset.path}image4.png",
              titre:
                  "Le président ukrainien Zelensky à la BBC : L'argent du sang est payé.",
                  sousTitre: "Le président ukrainien Volodymyr Zelensky a accordé une interview à la BBC dans laquelle il a déclaré que \"l'argent du sang est payé\" pour le gaz russe...",
                  nomAuteur: "armel",
            ),
            CardWidget(
              pathImage: "${Asset.path}image1.png",
              titre:
                  "Le président ukrainien Zelensky à la BBC : L'argent du sang est payé.",
                  sousTitre: "Le président ukrainien Volodymyr Zelensky a accordé une interview à la BBC dans laquelle il a déclaré que \"l'argent du sang est payé\" pour le gaz russe...",
                  nomAuteur: "armel",
            ),
            CardWidget(
              pathImage: "${Asset.path}image2.png",
              titre:
                  "Le président ukrainien Zelensky à la BBC : L'argent du sang est payé.",
                  sousTitre: "Le président ukrainien Volodymyr Zelensky a accordé une interview à la BBC dans laquelle il a déclaré que \"l'argent du sang est payé\" pour le gaz russe...",
                  nomAuteur: "armel",
            ),

            // ListTile(
            //   leading: Container(
            //     width: 70, // Ajoutez une largeur au conteneur
            //     height: 100, // Ajoutez une hauteur au conteneur
            //     decoration: const BoxDecoration(
            //       image: DecorationImage(
            //         image: AssetImage(
            //           "${Asset.path}image1.png",
            //         ),
            //         fit: BoxFit.scaleDown
            //       ),
            //     ),

            //   ),
            //   title: Text(
            //     "Le président ukrainien Zelensky à la BBC : L'argent du sang est payé.",
            //     style: GoogleFonts.poppins(
            //       fontSize: 14,
            //       fontWeight: FontWeight.w400,
            //       color: const Color(0xFF5669FF),
            //     ),
            //   ),
            //   subtitle: Column(
            //     children: [
            //       const SizedBox(
            //         height: 5,
            //       ),
            //       Text(
            //         "Le président ukrainien Volodymyr Zelensky a accordé une interview à la BBC dans laquelle il a déclaré que \"l'argent du sang est payé\" pour le gaz russe...",
            //         style: GoogleFonts.poppins(
            //           fontSize: 10,
            //           fontWeight: FontWeight.w400,
            //           color: const Color(0xFF353333),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 7,
            //       ),
            //       Row(
            //         children: [
            //           CircleAvatar(
            //             radius: 8,
            //             child: Icon(
            //               Icons.person_2_rounded,
            //               color: Colors.white,
            //               size: 15,
            //             ),
            //             backgroundColor: Color(0XFFC4C4C4),
            //           ),
            //           Text(
            //             " nom auteur",
            //             style: GoogleFonts.poppins(
            //               fontSize: 8,
            //               fontWeight: FontWeight.w500,
            //               color: const Color(0xFFF2583E),
            //             ),
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
