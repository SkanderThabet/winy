import 'package:flutter/material.dart';
import 'package:winy/models/category.dart';
import 'package:winy/models/subcategory.dart';
import 'package:winy/pages/details_page.dart';
import 'package:winy/widgets/category_icon.dart';
import 'package:winy/widgets/main_app_bar.dart';

class SelectedCategoryPage extends StatelessWidget {
  Category? selectedCategory;

  SelectedCategoryPage(this.selectedCategory);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(),
        body: Container(
          child: Center(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CategoryIcon(color : selectedCategory?.color, iconName : selectedCategory?.icon),
                  const SizedBox(width: 10),
                  Text(
                    selectedCategory!.name!,
                    style:
                        TextStyle(color: selectedCategory?.color, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(selectedCategory!.subCategories!.length,
                    (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage(subCategory: selectedCategory!.subCategories![index] as SubCategory,)
                          ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                              'assets/imgs/${selectedCategory?.subCategories![index].imgName}.jpeg',
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          selectedCategory!.subCategories![index].name!,
                          style: TextStyle(
                            color: selectedCategory!.subCategories![index].color,
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ))
            ],
          )),
        ));
  }


}
