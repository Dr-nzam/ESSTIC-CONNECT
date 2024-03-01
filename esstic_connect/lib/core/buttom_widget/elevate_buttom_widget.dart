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
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: colorText,
        ),
      ),
    );
  }
}
