import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailInformation extends StatefulWidget {
  const DetailInformation({super.key});

  @override
  State<DetailInformation> createState() => _DetailInformationState();
}

class _DetailInformationState extends State<DetailInformation> {
  @override
  Widget build(BuildContext context) {
    String text = "Le président ukrainien Volodymyr Zelensky a accordé une interview à la BBC dans laquelle il a déclaré que l'argent du sang est payé pour le gaz russe. Zelensky a déclaré que l'Europe ne peut pas continuer à acheter du gaz russe car cela finance la guerre en Ukraine. Il a appelé l'Europe à trouver des alternatives au gaz russe, comme le gaz naturel liquéfié (GNL) et les énergies renouvelables. Zelensky a également déclaré que l'Ukraine est prête à fournir à l'Europe du gaz naturel, mais qu'elle a besoin d'aide pour développer ses infrastructures gazières..";
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Image.asset(
                    "${Asset.path}etape1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Détails de l'information",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0XFFC4C4C4),
                      child: Icon(
                        Icons.person_2_rounded,
                        color: Colors.white,
                        size: 19,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "nomAuteur",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFF2583E),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Le président ukrainien Zelensky à la BBC : L'argent du sang est payé",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF5669FF),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  color: Color(0xFFA0A0A0),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF353333),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
