import 'package:esstic_connect/core/formulaire_widjet/search_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:esstic_connect/core/appbar_widget.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  TextEditingController controllersearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA0A0A0),
      appBar: AppBarWidget(
        title: "Informations",
        iconAction: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15, right: 15),
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: SearchFormWidget(
              controller: controllersearch,
              preffixIcon: Icon(Icons.search_rounded, color: Color(0XFF5669FF),),
              placeholder: "rekdn",
              suffixIcon: Icon(Icons.search_rounded, color: Color(0XFF5669FF),),
            ),
          ),
        ],
      ),
    );
  }
}
