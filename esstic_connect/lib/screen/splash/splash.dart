import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("${Asset.path}logo.png"),
      ),
    );
  }
}
