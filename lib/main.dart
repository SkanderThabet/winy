import 'package:flutter/material.dart';
import 'package:winy/pages/category_list_page.dart';
import 'package:winy/pages/splashpage.dart';
import 'package:winy/pages/welcomepage.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
    debugShowCheckedModeBanner: false,
    home: CategoryListPage()//SplashPage(duration: 3, goToPage: const WelcomePage(),),
  ));
}







