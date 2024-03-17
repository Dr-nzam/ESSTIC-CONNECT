import 'package:esstic_connect/core/buttom_widget/elevate_buttom_widget.dart';
import 'package:esstic_connect/core/formulaire_widjet/form_sans_Icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AjouterInformation extends StatefulWidget {
  const AjouterInformation({super.key});

  @override
  State<AjouterInformation> createState() => _AjouterInformationState();
}

TextEditingController titreController = TextEditingController();
TextEditingController descriptionController = TextEditingController();

class _AjouterInformationState extends State<AjouterInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ajouter une information",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Titre de l’information",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              FormSansIconWidget(
                controller: titreController,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Description de l’information",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              FormSansIconWidget(
                controller: descriptionController,
                sizeForm: 7,
              ),
              SizedBox(height: 20,),
              Center(
                child: ElevateButtonWidget(
                  onPressed: () {},
                  colorButton: const Color(0xFF5669FF),
                  text: "Publier",
                  colorText: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
