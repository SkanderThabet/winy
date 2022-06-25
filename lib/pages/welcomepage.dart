import 'package:flutter/material.dart';
import 'package:winy/pages/category_list_page.dart';

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
                  child: Image.asset('assets/imgs/front-view-black-wine-bottle-red-wine-glass-cheese-cut-lemon-pieces-dark-chocolate-wooden-boards-dried-flower-branch-red-table.jpg', fit: BoxFit.cover,
                  ),
                )
            ),
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
                        child: Image.asset('assets/Group 154@3x.png', height: 130, width: 130),

                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text("Bienvenue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text("Life is better with wine\nAll you need is love and wine",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextButton(onPressed: () {},
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            backgroundColor: AppColors.Main_Color,
                            padding: const EdgeInsets.all(25)
                        ),

                        child:
                        const Text('Essayez maintenant!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20,bottom: 20),

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: AppColors.Main_Color.withOpacity(0.2),
                          highlightColor: AppColors.Main_Color.withOpacity(0.2),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => CategoryListPage()
                            ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                border: Border.all(
                                    color: AppColors.Main_Color,
                                    width: 4
                                )
                            ),
                            child: const Text('Se connecter',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.Main_Color,
                                  fontWeight: FontWeight.bold
                              ),
                            ),

                          ),
                        ),
                      ),
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
