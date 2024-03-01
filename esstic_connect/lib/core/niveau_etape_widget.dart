import 'package:flutter/material.dart';

class NiveauEtapeWidget extends StatelessWidget {

  final Color couleur; 
  const NiveauEtapeWidget({super.key,  required this.couleur});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10, 
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: couleur
      ),
    );
  }
}