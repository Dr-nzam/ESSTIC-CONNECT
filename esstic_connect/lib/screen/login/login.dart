import 'package:esstic_connect/controller/authentificatio_controller/login_controller.dart';
import 'package:esstic_connect/core/buttom_widget/elevate_buttom_widget.dart';
import 'package:esstic_connect/core/buttom_widget/outline_buttom_wiget.dart';
import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/core/formulaire_widjet/form_widget.dart';
import 'package:esstic_connect/data/authentification_model.dart';
import 'package:esstic_connect/data/secure_stokage.dart';
import 'package:esstic_connect/screen/core.dart';
import 'package:flashtoast/flash_toast.dart';
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
  LoginController controller = LoginController();
  final _keyform = GlobalKey<FormState>();
  SecureStorage secureStorage = SecureStorage();
  final UserModel user = Get.put(UserModel());
  @override
  Widget build(BuildContext context) {
  //   void toto() async {
  //     var rep = await controller.loginUserPost("admin@admingg.com", "password");
  //     print(rep.body);
  //   }

  //   toto();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Form(
                  key: _keyform,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Image.asset(
                          "${Asset.path}logo.png",
                          scale: 2,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Connectez-vous à votre compte",
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
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
                                color: const Color(0xFF000000),
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
                      const SizedBox(
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
                                color: const Color(0xFF000000),
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
                        colorButton: const Color(0XFF5669FF),
                        text: "Se connecter",
                        colorText: Colors.white,
                        onPressed: () async {
                          if (_keyform.currentState!.validate()) {
                            var reponse = await controller.loginUserPost(
                                emailController.text, passwordController.text);
                                if (reponse.statusCode == 200) {
                                  var infoUser = await controller.getInfoUser(reponse.body['access']);
                                  if (infoUser.statusCode == 200) {
                                    user.donnees.value = [infoUser.body];
                                    FlashToast.showFlashToast(
                                  context: context,
                                  title: "Connexion réussir.",
                                  message: "Vous êtes désormais connecté en tant qu'administrateur...",
                                  flashType: FlashType.success,
                                  duration: 5,
                                );
                                  }else{
                                  // ignore: use_build_context_synchronously
                                FlashToast.showFlashToast(
                                  context: context,
                                  title: "Connexion réussir.",
                                  message: "Une erreur est survenu veillez resayer",
                                  flashType: FlashType.success,
                                  duration: 5,
                                );
                                  }
                                
                                Get.offAll(Core());
                              } else if(reponse.statusCode == 401) {
                                // ignore: use_build_context_synchronously
                                FlashToast.showFlashToast(
                                  context: context,
                                  title: "Echec de connexion",
                                  message: "Oup... mot de passe ou email incorrect",
                                  flashType: FlashType.error,
                                  duration: 5,
                                );
                              }
                              else{
                                FlashToast.showFlashToast(
                                  context: context,
                                  title: "Echec de connexion",
                                  message: "Une erreur est survenu lors de votre enregistrement veillez resayer plus tard",
                                  flashType: FlashType.error,
                                  duration: 5,
                                );
                              }
                          }
                        },
                      ),
                      OutlineButtonWidget(
                        colorButton: const Color(0XFF5669FF),
                        text: "Retour à la page d’accueil",
                        colorText: const Color(0XFF5669FF),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
