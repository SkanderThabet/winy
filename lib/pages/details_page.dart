import 'package:flutter/material.dart';
import 'package:winy/helpers/appcolors.dart';
import 'package:winy/models/subcategory.dart';
import 'package:winy/widgets/category_icon.dart';
import 'package:winy/widgets/main_app_bar.dart';

class DetailsPage extends StatefulWidget {
  SubCategory? subCategory;

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
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50)),
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/imgs/${widget.subCategory
                                    ?.imgName!}.jpeg'),
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
                                style:
                                TextStyle(fontSize: 20, color: Colors.white),
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
                                  offset: Offset.zero
                              )
                            ]
                        ),
                        child: Row(
                          children: const [
                            Text(
                              '3',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                            Icon(Icons.shopping_cart, color: Colors.white,
                              size: 15,)
                          ],
                        ),
                      )),
                  MainAppBar(),
                ],
              ),
            ),
            Expanded(child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Text('Selectionnez votre bouteille'),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.subCategory?.parts.length,
                        itemBuilder: (BuildContext context, int index){
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.subCategory?.parts.forEach((element) {
                                  element.isSelected = widget.subCategory?.parts[index] == element;
                                });
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(15),
                                  width: 120,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    border: widget.subCategory!.parts[index].isSelected as bool  ? Border.all(
                                      color: widget.subCategory?.color as Color, width: 7
                                    ) : null,
                                    borderRadius: BorderRadius.circular(25),
                                    image: DecorationImage(
                                      image: AssetImage('assets/imgs/${widget.subCategory?.parts[index].imgName}.jpeg',
                                      ),fit: BoxFit.cover
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: Offset.zero,
                                        blurRadius: 10
                                      )
                                    ]
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 25),
                                  child: Text(
                                      widget.subCategory?.parts[index].name as String
                                  , textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: widget.subCategory?.color
                                  ),),

                                )
                              ],
                            ),
                          );
                        },

                    ),
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
