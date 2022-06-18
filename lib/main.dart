import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(duration: 3, goToPage: WelcomePage(),),
  ));
}



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
          color: const Color(0xFFFCFCFC),
          alignment: Alignment.center,
          child:
              Image.asset(
                  'assets/imgs/Asset 1.png', width: 150,height: 150,))
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
              child: Opacity(
                opacity: 0.6,
                child: Image.asset('assets/imgs/front-view-black-wine-bottle-red-wine-glass-cheese-cut-lemon-pieces-dark-chocolate-wooden-boards-dried-flower-branch-red-table.jpg', fit: BoxFit.cover,
                ),
              )
          ),
          Center(
            child: Column(
              children: [
                ClipOval(
                  child: Container(
                    height: 180,
                    width: 180,
                    color: const Color(0xFFFF6363),
                    alignment: Alignment.center,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
    );

  }
}

