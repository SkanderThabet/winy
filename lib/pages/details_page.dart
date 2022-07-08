import 'package:flutter/material.dart';
import 'package:winy/helpers/appcolors.dart';
import 'package:winy/models/subcategory.dart';
import 'package:winy/widgets/category_icon.dart';
import 'package:winy/widgets/main_app_bar.dart';
import 'package:winy/widgets/theme_button.dart';

import '../widgets/category_parts_list.dart';
import '../widgets/unit_price_widget.dart';

class DetailsPage extends StatefulWidget {
  SubCategory? subCategory;

  int amount = 0;
  double price = 15.0;
  double cost = 0.0;

  DetailsPage({this.subCategory});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/imgs/${widget.subCategory?.imgName!}.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.transparent
                          ])),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryIcon(
                            color: widget.subCategory?.color,
                            iconName: widget.subCategory?.icon,
                            width: 50,
                            height: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                'Vin Rouge',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: widget.subCategory?.color,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Text(
                                  '\50.00€',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      right: 20,
                      top: 100,
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 5, left: 15, right: 15, bottom: 8),
                        decoration: BoxDecoration(
                            color: AppColors.Main_Color,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  blurRadius: 20,
                                  offset: Offset.zero)
                            ]),
                        child: Row(
                          children: const [
                            Text(
                              '3',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        ),
                      )),
                  MainAppBar(),
                ],
              ),
            ),
            Expanded(
                child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CategoryPartsList(
                    subCategory: widget.subCategory
                  ),
                  UnitPriceWidget(),
                  ThemeButton(onClick: () {},
                  label: 'Ajouter au panier',
                  icon: const Icon(Icons.shopping_cart,color: Colors.white,),
                  ),
                  ThemeButton(onClick: () {},
                  color: AppColors.DARK_GREEN,
                  highlight: AppColors.DARKER_GREEN,
                  icon: const Icon(Icons.location_pin,color: Colors.white,),
                  label: 'Emplacement du produit',
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
