import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageDetailWidget extends StatelessWidget {
  final String image;
  final String titre;
  const ImageDetailWidget(
      {super.key, required this.image, required this.titre});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            child: Image(
              image: NetworkImage(image),
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
                titre,
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
    );
  }
}
