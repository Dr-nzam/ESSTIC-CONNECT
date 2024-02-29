import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevateButtonWidget extends StatelessWidget {
  final Color colorButton;
  final Color colorText;
  final String text;
  final VoidCallback? onPressed;

  const ElevateButtonWidget({
    Key? key,
    required this.colorButton,
    required this.text,
    required this.colorText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(colorButton),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.nunitoSans(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: colorText,
        ),
      ),
    );
  }
}