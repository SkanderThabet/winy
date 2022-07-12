import 'package:flutter/material.dart';

import '../helpers/appcolors.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color themeColor;
  MainAppBar({this.themeColor = AppColors.Main_Color});

  @override
  State<MainAppBar> createState() => _MainAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(80);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        ('assets/Image 50@3x.png'),
        height: 40,
        width: 40,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: widget.themeColor),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.all(10),
          child: ClipOval(
            child: Image.asset('assets/imgs/ska.jpeg'),
          ),
        )
      ],
    );
  }
}