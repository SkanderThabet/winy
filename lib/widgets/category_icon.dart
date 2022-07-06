import 'package:flutter/material.dart';


class CategoryIcon extends StatelessWidget {
  Color? color;
  String? iconName;
  double? height;
  double? width;

  CategoryIcon({required this.color, required this.iconName, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        padding: const EdgeInsets.all(10),
        color: color,
        child: Image.asset(iconName!, height: height, width: width,),
      ),
    );
  }


}
