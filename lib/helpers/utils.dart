import 'package:winy/helpers/appcolors.dart';

import '../models/category.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(name: "Vin Rouge", icon: "assets/icons/Image 71.png", imgName: "vinrouge", color: AppColors.Vin_Rouge_Color , subCategories: []
      ),
      Category(name: "Vin Rosé", icon: "assets/icons/Image 72.png", imgName: "vinrose", color: AppColors.Vin_Rose_Color , subCategories: []
      ),
      Category(name: "Vin Blanc", icon: "assets/icons/Image 70.png", imgName: "vinblanc", color: AppColors.Vin_Blanc_Color , subCategories: []
      ),
      Category(name: "Whisky", icon: "assets/icons/whisky_icon.png", imgName: "whisky", color: AppColors.Whisky_Color , subCategories: []
      ),
    ];
  }
}