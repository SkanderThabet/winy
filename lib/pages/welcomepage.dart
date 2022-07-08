import 'package:flutter/material.dart';
import 'package:winy/pages/category_list_page.dart';
import 'package:winy/widgets/theme_button.dart';

import '../helpers/appcolors.dart';

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
              opacity: 0.33,
              child: Image.asset(
                'assets/imgs/front-view-black-wine-bottle-red-wine-glass-cheese-cut-lemon-pieces-dark-chocolate-wooden-boards-dried-flower-branch-red-table.jpg',
                fit: BoxFit.cover,
              ),
            )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        height: 185.62,
                        width: 185.62,
                        color: AppColors.Main_Color,
                        alignment: Alignment.center,
                        child: Image.asset('assets/Group 154@3x.png',
                            height: 130, width: 130),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    "Bienvenue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    "Life is better with wine\nAll you need is love and wine",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ThemeButton(
                    onClick: () {

                    },
                    label: 'Essayez Maintenant!',
                  ),
                  ThemeButton(
                    onClick: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoryListPage()));},
                    label: 'Se Connecter',
                    labelColor: AppColors.Main_Color,
                    color: Colors.transparent,
                    highlight: AppColors.Main_Color.withOpacity(0.5),
                    borderColor: AppColors.Main_Color,
                    borderWidth: 4,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
