import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormSansIconWidget extends StatelessWidget {
  final bool isPassword;
  final int sizeForm;
  final String? placeholder;
  final String? plein;
  final String? errorMessage;
  final TextEditingController? controller;
  final TextInputType keyboardType;

  FormSansIconWidget({
    Key? key,
    this.isPassword = false,
    this.placeholder = '',
    this.plein = '',
    this.sizeForm = 1,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.errorMessage = 'Veuillez remplir ce champ.',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      maxLines: sizeForm,
      obscureText: isPassword,
      obscuringCharacter: '*',
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: placeholder,
        
        hintStyle: GoogleFonts.nunitoSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF9A9A9A),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff544F4D),
          ),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessage;
        }
        return null;
      },
      onChanged: (value) {
        // Handle changes to the text field's value
      },
    );
  }
}
