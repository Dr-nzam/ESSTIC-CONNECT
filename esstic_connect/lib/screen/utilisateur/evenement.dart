import 'package:esstic_connect/core/appbar_widget.dart';
import 'package:esstic_connect/core/cart_event_tournoi.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/formulaire_widjet/search_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Evenement extends StatefulWidget {
  const Evenement({super.key});

  @override
  State<Evenement> createState() => _EvenementState();
}

class _EvenementState extends State<Evenement> {
  TextEditingController controllersearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8f4f4),
      appBar: AppBarWidget(
        title: "Évènements",
        iconAction: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
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

             CartEventTournoi(
              iconAuteur: Icon(Icons.person, color: Color(0XFF5265FF),),
              iconDate: Icon(Icons.calendar_month_outlined, color: Color(0XFF5265FF),),
              iconHeure: Icon(Icons.watch_later_outlined, color: Color(0XFF5265FF),),
              iconLieu: Icon(Icons.location_on_rounded, color: Color(0XFF5265FF),),
              pathImage: "${Asset.path}event1.png",
              date: "10 décembre 2024",
              heure: "16h00 - 21h00",
              lieu: "36 Guild Street Londres, États-Unis",
              nomAuteur: "Nom de l’organisateur",
              titre: "InnovateX",
            )
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(5),
            //   child: Container(
            //     padding: EdgeInsets.all(15),
            //     color: Colors.white,
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Center(
            //           child: ClipRRect(
            //             borderRadius: BorderRadius.circular(5),
            //             child: Container(
            //               // color: Colors.red,
            //               width: 250,
            //               height: 150,
            //               decoration: BoxDecoration(
            //                 image: DecorationImage(
            //                     image: AssetImage("${Asset.path}event1.png"),
            //                     fit: BoxFit.cover),
            //                 color: Colors.blueAccent,
            //               ),
            //             ),
            //           ),
            //         ),
            //         const SizedBox(
            //           height: 5,
            //         ),
            //         Center(
            //           child: Text(
            //             "InnovateX",
            //             style: GoogleFonts.poppins(
            //               fontSize: 18,
            //               fontWeight: FontWeight.w400,
            //               color: const Color(0xFF000000),
            //             ),
            //           ),
            //         ),
            //         Container(
            //           padding: const EdgeInsets.only(left: 35.0),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Row(
            //                 children: [
            //                   CircleAvatar(
            //                     radius: 15,
            //                     backgroundColor: Color(0xFFeef0ff),
            //                     child: Icon(
            //                       Icons.calendar_month_outlined,
            //                       color: Color(0xFF5265FF),
            //                       size: 20,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 10,
            //                   ),
            //                   Text(
            //                     "10 décembre 2024",
            //                     style: GoogleFonts.poppins(
            //                       fontSize: 12,
            //                       fontWeight: FontWeight.w400,
            //                       color: const Color(0xFF747688),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               const SizedBox(
            //                 height: 5,
            //               ),
            //               Row(
            //                 children: [
            //                   CircleAvatar(
            //                     radius: 15,
            //                     backgroundColor: Color(0xFFeef0ff),
            //                     child: Icon(
            //                       Icons.watch_later_outlined,
            //                       color: Color(0xFF5265FF),
            //                       size: 20,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 10,
            //                   ),
            //                   Text(
            //                     "16h00 - 21h00 "10 décembre 2024"",
            //                     style: GoogleFonts.poppins(
            //                       fontSize: 12,
            //                       fontWeight: FontWeight.w400,
            //                       color: const Color(0xFF747688),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               const SizedBox(
            //                 height: 5,
            //               ),
            //               Row(
            //                 children: [
            //                   CircleAvatar(
            //                     radius: 15,
            //                     backgroundColor: Color(0xFFeef0ff),
            //                     child: Icon(
            //                       Icons.location_on_rounded,
            //                       color: Color(0xFF5265FF),
            //                       size: 20,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 10,
            //                   ),
            //                   Text(
            //                     "36 Guild Street Londres, États-Unis 16h00 - 21h00 "10 décembre 2024"",
            //                     style: GoogleFonts.poppins(
            //                       fontSize: 12,
            //                       fontWeight: FontWeight.w400,
            //                       color: const Color(0xFF747688),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               const SizedBox(
            //                 height: 5,
            //               ),
            //               Row(
            //                 children: [
            //                   CircleAvatar(
            //                     radius: 15,
            //                     backgroundColor: Color(0xFFeef0ff),
            //                     child: Icon(
            //                       Icons.person,
            //                       color: Color(0xFF5265FF),
            //                       size: 20,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 10,
            //                   ),
            //                   Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         "Nom de l’organisateur 36 Guild Street Londres, États-Unis 16h00 - 21h00 "10 décembre 2024"",
            //                         style: GoogleFonts.poppins(
            //                           fontSize: 12,
            //                           fontWeight: FontWeight.w400,
            //                           color: const Color(0xFFF2583E),
            //                         ),
            //                       ),
            //                       Text(
            //                         "Organisateur",
            //                         style: GoogleFonts.poppins(
            //                           fontSize: 12,
            //                           fontWeight: FontWeight.w400,
            //                           color: const Color(0xFF747688),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
