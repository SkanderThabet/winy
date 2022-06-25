import 'package:flutter/material.dart';

import '../helpers/appcolors.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;


  SplashPage({Key? key, required this.duration, required this.goToPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => goToPage));
    });

    return Scaffold(
        body: Container(
            color: AppColors.Main_Color,
            alignment: Alignment.center,
            child:
            Image.asset(
              'assets/Image 49@3x.png', width: 150,height: 150,))
    );
  }
}
