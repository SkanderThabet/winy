import 'package:flutter/material.dart';
import 'package:winy/helpers/appcolors.dart';
import 'package:winy/pages/category_list_page.dart';
import 'package:winy/widgets/main_app_bar.dart';
import 'package:winy/widgets/theme_button.dart';

import '../helpers/utils.dart';
import '../models/onboardingcontent.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<OnBoardingContent> _content = Utils.getOnboarding();
  int pageIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _controller,
                  onPageChanged: (int page) {
                    setState(() {
                      pageIndex = page;
                    });
                  },
                  children: [
                    ...List.generate(
                      _content.length,
                      (index) => Container(
                        padding: const EdgeInsets.all(40),
                        margin: const EdgeInsets.only(
                            left: 40, right: 40, top: 40, bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.Main_Color.withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: Offset.zero)
                            ]),
                        child: Column(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Image.asset(
                                      ('assets/Image 50@3x.png'),
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                  Image.asset(
                                      'assets/imgs/${_content[index].imgName}.png'),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    _content[index].message.toString(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: AppColors.Main_Color,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            Visibility(
                              visible: index == _content.length - 1,
                              child: ThemeButton(
                                onClick: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryListPage()));
                                },
                                label: 'Entrez maintenant!',
                                color: AppColors.Main_Color,
                                highlight: AppColors.Vin_Rouge_Color,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                      _content.length,
                      (index) => GestureDetector(
                            onTap: () {
                              _controller?.animateTo(
                                  MediaQuery.of(context).size.width * index,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: AppColors.Main_Color,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      width: 6,
                                      color: pageIndex == index
                                          ? AppColors.OnboardConvex
                                          : Theme.of(context).canvasColor)),
                              margin: const EdgeInsets.all(10),
                            ),
                          ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ThemeButton(
                onClick: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryListPage()));
                },
                label: 'Skip Onboard!',
                color: AppColors.Main_Color,
                highlight: AppColors.Vin_Rouge_Color,
              )
            ],
          ),
        ));
  }
}