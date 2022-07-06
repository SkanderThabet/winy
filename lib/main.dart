import 'package:flutter/material.dart';
import 'package:winy/helpers/utils.dart';
import 'package:winy/models/subcategory.dart';
import 'package:winy/pages/details_page.dart';
import 'package:winy/pages/splashpage.dart';
import 'package:winy/pages/welcomepage.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
    debugShowCheckedModeBanner: false,
    home: DetailsPage(subCategory: Utils.getMockedCategories()[0].subCategories![0] as SubCategory,)//SplashPage(duration: 3, goToPage: const WelcomePage(),)
  ));
}







