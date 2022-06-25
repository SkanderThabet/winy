


import 'dart:ui';

class Category {
  String name;
  String icon;
  String imgName;
  Color color;
  List<Category>subCategories;

  Category(
      {required this.name, required this.icon, required this.imgName, required this.color, required this.subCategories}
      );
}

