import 'package:flutter/material.dart';
import 'package:winy/helpers/appcolors.dart';

import '../helpers/utils.dart';
import '../models/category.dart';
import '../widgets/category_bottom_bar.dart';
import '../widgets/category_card.dart';


class CategoryListPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(

      ),
      appBar: AppBar(
        title: Image.asset(('assets/Image 50@3x.png'),
          height: 40,
          width: 40,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: AppColors.Main_Color),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset('assets/imgs/ska.jpeg'),
            ),
          )
        ],
      ),
      body: Container(

        child: Stack(
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                child: Text('Sélectionnez une catégorie',
                textAlign: TextAlign.center,
                style: TextStyle(

                  color: Colors.black
                ),),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (BuildContext ctx,int index) {
                  return CategoryCard(category : categories[index]);
                },
              ),
              )
            ],
          ),
            Positioned(
              bottom: 0,
                left: 0,
                right: 0,
                child: CategoryBottomBar()
            )
          ],
        ),
      ),
    );
  }
}






