import 'package:flutter/material.dart';
import 'package:winy/models/subcategory.dart';
import 'package:winy/widgets/main_app_bar.dart';

class DetailsPage extends StatelessWidget {
  SubCategory? subCategory;

  DetailsPage({this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Text(subCategory!.name!),
      ),
    );
  }


}
