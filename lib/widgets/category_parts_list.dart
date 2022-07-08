import 'package:flutter/material.dart';
import 'package:winy/models/subcategory.dart';

class CategoryPartsList extends StatefulWidget {

  SubCategory? subCategory;

  @override
  State<CategoryPartsList> createState() => _CategoryPartsListState();

  CategoryPartsList({this.subCategory});
}

class _CategoryPartsListState extends State<CategoryPartsList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Text('Selectionnez votre bouteille'),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.subCategory?.parts.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    widget.subCategory?.parts.forEach((element) {
                      element.isSelected =
                          widget.subCategory?.parts[index] == element;
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
                          border: widget.subCategory!.parts[index]
                              .isSelected as bool
                              ? Border.all(
                              color: widget.subCategory?.color
                              as Color,
                              width: 7)
                              : null,
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/imgs/${widget.subCategory?.parts[index].imgName}.jpeg',
                              ),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset.zero,
                                blurRadius: 10)
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25),
                      child: Text(
                        widget.subCategory?.parts[index].name
                        as String,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: widget.subCategory?.color),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
