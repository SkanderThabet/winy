import 'package:flutter/material.dart';


class CategoryIcon extends StatelessWidget {
  Color color;
  String iconName;

  CategoryIcon(this.color, this.iconName);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        padding: const EdgeInsets.all(10),
        color: this.color,
        child: Image.asset(this.iconName, height: 30, width: 30,),
      ),
    );
  }


}
