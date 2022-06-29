import 'package:flutter/material.dart';


class CategoryIcon extends StatelessWidget {
  Color? color;
  String? iconName;

  CategoryIcon({required this.color, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        padding: const EdgeInsets.all(10),
        color: color,
        child: Image.asset(iconName!, height: 30, width: 30,),
      ),
    );
  }


}
