import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextButtonWidget extends StatelessWidget {
  final Color colorText;
  final String text;
  final VoidCallback? onPressed;

  const TextButtonWidget({
    Key? key,
    required this.text,
    required this.colorText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
