import 'package:flutter/material.dart';
import 'package:winy/helpers/appcolors.dart';
import 'package:winy/pages/selected_category.dart';
import 'package:winy/widgets/main_app_bar.dart';

import '../helpers/utils.dart';
import '../models/category.dart';
import '../widgets/category_bottom_bar.dart';
import '../widgets/category_card.dart';

class CategoryListPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: MainAppBar(),
      body: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Sélectionnez une catégorie',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return CategoryCard(
                        category: categories[index],
                        onClickCard: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SelectedCategoryPage(categories[index])));
                        },
                      );
                    },
                  ),
                )
              ],
            ),
            Positioned(bottom: 0, left: 0, right: 0, child: CategoryBottomBar())
          ],
        ),
      ),
    );
  }
}
