import 'package:esstic_connect/controller/user_controller/tournoi_controller.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/icon_text.dart';
import 'package:esstic_connect/core/image_detail_widget.dart';
import 'package:esstic_connect/data/utilisateur_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailTournoi extends StatefulWidget {
  const DetailTournoi({super.key});

  @override
  State<DetailTournoi> createState() => _DetailTournoiState();
}

class _DetailTournoiState extends State<DetailTournoi> {
  final TournoiController controller = TournoiController();
  final arguments = Get.arguments;
  int? id;
  void frist() async {
    id = await arguments['id'];
    await controller.getDetailTournoi(id!);
  }

  @override
  void initState() {
    super.initState();
    frist();
  }

  @override
  Widget build(BuildContext context) {
    final TournoiModel tournoiModel = Get.find();
    return Scaffold(
      body: Obx(
        () => controller.loading.value == true
            ? const CircularProgressIndicator(
                color: Color(0XFF5669FF),
              )
            : ListView(
                children: [
                  ImageDetailWidget(
                      image:
                          "${Constants.baseUrl}${tournoiModel.donnees['image']}",
                      titre: "Détails du tournoi"),
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
                            "${tournoiModel.donnees['nom']}",
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
                          titre: "${tournoiModel.donnees['date']}",
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        IconText(
                          icon: const Icon(
                            Icons.location_on_rounded,
                            color: Color(0XFF5265FF),
                          ),
                          titre: "${tournoiModel.donnees['lieu']}",
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        tournoiModel.donnees['participant'] > 1
                            ? IconText(
                                icon: const Icon(
                                  Icons.group,
                                  color: Color(0XFF5265FF),
                                ),
                                titre:
                                    "${tournoiModel.donnees['participant']} participants",
                              )
                            : IconText(
                                icon: const Icon(
                                  Icons.group,
                                  color: Color(0XFF5265FF),
                                ),
                                titre:
                                    "${tournoiModel.donnees['participant']} participant",
                              ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        IconText(
                          icon: const Icon(
                            Icons.person_outline_sharp,
                            color: Color(0XFF5265FF),
                          ),
                          titre: "${tournoiModel.donnees['user']['email']}",
                          sousTitre: "Organisteur",
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        Text(
                          "À propos du tournoi",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: const Color(0XFF5265FF),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          "${tournoiModel.donnees['description']}",
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
