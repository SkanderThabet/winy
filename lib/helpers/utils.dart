import 'package:winy/helpers/appcolors.dart';

import '../models/category.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(name: "Vin Rouge", icon: "assets/icons/Image 71@3x", imgName: "VinRouge", color: AppColors.Main_Color , subCategories: []
      ),
      Category(name: "Vin Rosé", icon: "assets/icons/Image 72@3x.png", imgName: "VinRose", color: AppColors.Main_Color , subCategories: []
      ),
      Category(name: "Vin Blanc", icon: "assets/icons/Image 70@3x.png", imgName: "VinBlanc", color: AppColors.Main_Color , subCategories: []
      ),
      Category(name: "Whisky", icon: "assets/icons/Image 71@3x", imgName: "Whisky", color: AppColors.Main_Color , subCategories: []
      ),
    ];
  }
}