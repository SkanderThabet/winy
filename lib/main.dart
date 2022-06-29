import 'package:flutter/material.dart';
import 'package:winy/pages/splashpage.dart';
import 'package:winy/pages/welcomepage.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
    debugShowCheckedModeBanner: false,
    home: SplashPage(duration: 3, goToPage: const WelcomePage(),)
  ));
}







