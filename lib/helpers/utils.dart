import 'package:winy/helpers/appcolors.dart';
import 'package:winy/models/subcategory.dart';

import '../models/category.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(name: "Vin Rouge", icon : "assets/icons/Image 71.png", color :AppColors.Vin_Rouge_Color, imgName: "vinrouge",
           subCategories: [
            SubCategory('Magon', 'assets/icons/Image 71.png', AppColors.Vin_Rouge_Color, 'magon'),
            SubCategory('Mornag', 'assets/icons/Image 71.png', AppColors.Vin_Rouge_Color, 'mornag'),
            SubCategory('Grand Patron', 'assets/icons/Image 71.png', AppColors.Vin_Rouge_Color, 'grand patron'),
            SubCategory('Selian Reserve', 'assets/icons/Image 71.png', AppColors.Vin_Rouge_Color, 'Selian-ROUGE'),
          ]),
      Category(name: "Vin Rosé", icon : "assets/icons/Image 72.png", color : AppColors.Vin_Rose_Color, imgName: "vinrose",
           subCategories : []),
      Category(name : "Vin Blanc", icon : "assets/icons/Image 70.png",color : AppColors.Vin_Blanc_Color,imgName:  "vinblanc",
           subCategories : []),
      Category(name : "Whisky",icon :  "assets/icons/whisky_icon.png",  color : AppColors.Whisky_Color, imgName: "whisky",
          subCategories : []),
    ];
  }
}
