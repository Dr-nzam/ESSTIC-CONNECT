import 'package:esstic_connect/controller/user_controller/information_controller.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/image_detail_widget.dart';
import 'package:esstic_connect/data/utilisateur_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailInformation extends StatefulWidget {
  const DetailInformation({super.key});

  @override
  State<DetailInformation> createState() => _DetailInformationState();
}

class _DetailInformationState extends State<DetailInformation> {
  final InformationController controller = InformationController();
  final arguments = Get.arguments;
  int? id;
  void frist() async {
    id = await arguments['id'];
    await controller.getDetailInformation(id!);
  }

  @override
  void initState() {
    super.initState();
    frist();
  }

  @override
  Widget build(BuildContext context) {
    final InformationModel infomodel = Get.find();
    return Scaffold(
      body: Obx(
        () => controller.loading.value == true
            ? const CircularProgressIndicator(
                color: Color(0XFF5669FF),
              )
            : ListView(
                children: [
                  ImageDetailWidget(
                      image: "${Constants.baseUrl}${infomodel.donnees['image']}",
                      titre: "Détails de l'information"),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, right: 10),
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
                              "${infomodel.donnees['user']['email']}",
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
                          "${infomodel.donnees['titre']}",
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
                          "${infomodel.donnees['description']}",
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
      ),
    );
  }
}
