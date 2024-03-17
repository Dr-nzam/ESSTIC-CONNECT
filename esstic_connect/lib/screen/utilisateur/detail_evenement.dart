import 'package:esstic_connect/controller/user_controller/evenement_controller.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/icon_text.dart';
import 'package:esstic_connect/core/image_detail_widget.dart';
import 'package:esstic_connect/data/utilisateur_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailEvenement extends StatefulWidget {
  const DetailEvenement({super.key});

  @override
  State<DetailEvenement> createState() => _DetailEvenementState();
}

class _DetailEvenementState extends State<DetailEvenement> {
  final EvenementController controller = EvenementController();
  final arguments = Get.arguments;
  int? id;
  void frist() async {
    id = await arguments['id'];
    await controller.getDetailEvent(id!);
  }

  @override
  void initState() {
    super.initState();
    frist();
  }

  @override
  Widget build(BuildContext context) {
    final EvenementModel eventModel = Get.find();

    return Scaffold(
      // backgroundColor: Colors.white,
      body: Obx(
        () => controller.loading.value == true
            ? const CircularProgressIndicator(
                color: Color(0XFF5669FF),
              )
            : ListView(
                children: [
                  ImageDetailWidget(
                      image:
                          "${Constants.baseUrl}${eventModel.donnees['image']}",
                      titre: "Détails de l'évènement"),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            "${eventModel.donnees['nom']}",
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        IconText(
                          icon: const Icon(
                            Icons.calendar_month,
                            color: Color(0XFF5265FF),
                          ),
                          titre: "${eventModel.donnees['date']}",
                          sousTitre:
                              "${eventModel.donnees['heureDebut']} - ${eventModel.donnees['heureFin']}",
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        IconText(
                          icon: const Icon(
                            Icons.location_on_rounded,
                            color: Color(0XFF5265FF),
                          ),
                          titre: "${eventModel.donnees['lieu']}",
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        IconText(
                          icon: const Icon(
                            Icons.person_outline_sharp,
                            color: Color(0XFF5265FF),
                          ),
                          titre: "${eventModel.donnees['user']['email']}",
                          sousTitre: "Organisteur",
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        Text(
                          "À propos de l'événement",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: const Color(0XFF5265FF),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          "${eventModel.donnees['description']}",
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
      ),
    );
  }
}
