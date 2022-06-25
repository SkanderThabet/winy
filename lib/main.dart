import 'package:flutter/material.dart';
import 'package:winy/helpers/appcolors.dart';
import 'package:winy/pages/splashpage.dart';
import 'package:winy/pages/welcomepage.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(duration: 3, goToPage: const WelcomePage(),),
  ));
}







