import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Icon? iconAction;
  void Function()? onTap;

  AppBarWidget({this.title, this.iconAction});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFf8f4f4),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () => onTap,
          icon: Container(
            width: MediaQuery.of(context).size.width*0.1,
            height: MediaQuery.of(context).size.height*0.1,
            decoration: BoxDecoration(
              // color: Colors.white
            ),
            child: CircleAvatar(
              child: iconAction!,
              backgroundColor: Color(0XFF5669FF),
            ),
          ),
        ),
      ],
      title: Text(
        title!,
        style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: Color(0xFF120D26),
        ),
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
