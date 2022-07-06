import 'dart:ui';

import 'package:winy/models/category.dart';
import 'package:winy/models/categorypart.dart';

class SubCategory extends Category {
  List<CategoryPart> parts;

  SubCategory({
    String? name,
    String? icon,
    Color? color,
    String? imgName,
    this.parts = const [],
  })
      : super(
      name: name,
      icon: icon,
      color: color,
      imgName: imgName
  );
}
