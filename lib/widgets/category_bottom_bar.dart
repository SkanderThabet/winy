import 'package:flutter/material.dart';

import '../helpers/appcolors.dart';

class CategoryBottomBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(0.2),
                offset: Offset.zero
            )
          ]
      ),
      height: 100,
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Material(
              child:
              IconButton(
                icon : Icon(Icons.favorite, color: AppColors.Main_Color),
                onPressed: () {  },
              ),
            ),
          ),ClipOval(
            child: Material(
              child:
              IconButton(
                icon : Icon(Icons.shopping_cart, color: AppColors.Main_Color),
                onPressed: () {  },
              ),
            ),
          ),ClipOval(
            child: Material(
              child:
              IconButton(
                icon : Icon(Icons.pin_drop, color: AppColors.Main_Color),
                onPressed: () {  },
              ),
            ),
          ),ClipOval(
            child: Material(
              child:
              IconButton(
                icon : Icon(Icons.settings, color: AppColors.Main_Color),
                onPressed: () {  },
              ),
            ),
          ),
        ],
      ),
    );
  }
}