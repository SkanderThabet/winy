import 'dart:ui';

import 'package:winy/models/category.dart';

class SubCategory extends Category {
  SubCategory(String? name,
      String? icon,
      Color? color,
      String? imgName )
      : super(
      name: name,
      icon: icon,
      color: color,
      imgName: imgName
  );
}
