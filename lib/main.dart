import 'package:flutter/material.dart';
import 'package:winy/helpers/utils.dart';
import 'package:winy/models/subcategory.dart';
import 'package:winy/pages/details_page.dart';
import 'package:winy/pages/onboarding_page.dart';
import 'package:winy/pages/splashpage.dart';
import 'package:winy/pages/welcomepage.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
    debugShowCheckedModeBanner: false,
    home: OnboardingPage(),//SplashPage(duration: 3, goToPage: const WelcomePage(),)
  ));
}







