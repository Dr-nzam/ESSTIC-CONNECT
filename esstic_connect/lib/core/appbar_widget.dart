import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Icon? iconAction;
  void Function()? onTap;

  AppBarWidget({ this.title, this.iconAction});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: [
        IconButton(onPressed: ()=>onTap, icon: iconAction!)
      ],
      title: Text(title!),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
