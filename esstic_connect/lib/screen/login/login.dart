import 'package:esstic_connect/core/buttom_widget/elevate_buttom_widget.dart';
import 'package:esstic_connect/core/buttom_widget/outline_buttom_wiget.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/formulaire_widjet/form_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool seePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Image.asset(
                    "${Asset.path}logo.png",
                    scale: 2,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Connectez-vous à votre compte",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Email",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF000000),
                        ),
                      ),
                      TextSpan(
                        text: "*",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                FormWidget(
                  controller: emailController,
                  placeholder: "exemple@gmail.com",
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Mot de passe",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF000000),
                        ),
                      ),
                      TextSpan(
                        text: "*",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                FormWidget(
                  controller: passwordController,
                  placeholder: '*****************',
                  isPassword: seePassword,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        seePassword = !seePassword;
                      });
                    },
                    icon: Icon(
                      seePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevateButtonWidget(
                  colorButton: Color(0XFF5669FF),
                  text: "Se connecter",
                  colorText: Colors.white,
                  onPressed: () {},
                ),
                OutlineButtonWidget(
                  colorButton: Color(0XFF5669FF),
                  text: "Retour à la page d’accueil",
                  colorText: Color(0XFF5669FF),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
