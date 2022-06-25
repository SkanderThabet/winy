import 'package:flutter/material.dart';

import '../helpers/utils.dart';
import '../models/category.dart';

class CategoryListPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
      ),
      appBar: AppBar(),
      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: Text('Sélectionnez une catégorie',
              textAlign: TextAlign.center,
              style: TextStyle(

                color: Colors.black
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
