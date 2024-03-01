import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:esstic_connect/screen/utilisateur/emission.dart';
import 'package:esstic_connect/screen/utilisateur/evenement.dart';
import 'package:esstic_connect/screen/utilisateur/informations.dart';
import 'package:esstic_connect/screen/utilisateur/tournoi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Core extends StatefulWidget {
  const Core({super.key});

  @override
  State<Core> createState() => _CoreState();
}

class _CoreState extends State<Core> {
  int _selectedIndex = 0;
  bool test = false;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color selectCouleur = const Color(0xFF5669FF);
  Color unselectCouleur = const Color(0xFFA0A0A0);
  @override
  Widget build(BuildContext context) {

    List page = [
      Information(),
      Evenement(), 
      Emission(), 
      Tournoi(),
    ];
    return Scaffold(
      body: Container(
        child: page.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFFFFFFF),
        selectedItemColor: selectCouleur,
        selectedIconTheme: const IconThemeData(
          color: Color(0xFF5669FF),
        ),
        unselectedItemColor: unselectCouleur,
        selectedFontSize: 14,
        currentIndex: _selectedIndex,
        unselectedFontSize: 14,
        onTap: _onItemTapped,
        selectedLabelStyle:
            GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w500),
        unselectedLabelStyle:
            GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w500),
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              // ignore: deprecated_member_use
              color: selectCouleur,
              '${Asset.path}information.svg',
            ),
            label: 'Informations',
            icon: SvgPicture.asset(
              // ignore: deprecated_member_use
              color: unselectCouleur,
              '${Asset.path}information.svg',
            ),
          ),
          const BottomNavigationBarItem(
            label: 'Évènements',
            icon: Icon(Icons.calendar_today_outlined),
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              // ignore: deprecated_member_use
              color: selectCouleur,
              '${Asset.path}emission.svg',
            ),
            label: 'Émissions',
            icon: SvgPicture.asset(
              // ignore: deprecated_member_use
              color: unselectCouleur,
              '${Asset.path}emission.svg',
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              // ignore: deprecated_member_use
              color: selectCouleur,
              '${Asset.path}tournoi.svg',
            ),
            label: 'Tournois',
            icon: SvgPicture.asset(
              // ignore: deprecated_member_use
              color: unselectCouleur,
              '${Asset.path}tournoi.svg',
            ),
          ),
        ],
      ),
    );
  }
}
