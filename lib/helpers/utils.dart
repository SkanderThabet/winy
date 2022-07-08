import 'package:winy/helpers/appcolors.dart';
import 'package:winy/models/categorypart.dart';
import 'package:winy/models/onboardingcontent.dart';
import 'package:winy/models/subcategory.dart';

import '../models/category.dart';

class Utils {
  static List<OnBoardingContent> getOnboarding() {
    return [
      OnBoardingContent(
          message:
              'Un vin de plaisir à savourer dans les deux ou trois ans en accompagnant des gésiers à la sauce provençale, du bœuf aux noix de cajou, des cailles au nid ou une viande farcie au fromage.',
          imgName: ''),
      OnBoardingContent(
          message:
              'Savourez le whisky que vous désirez, faites vous plaisir !.',
          imgName: ''),
      OnBoardingContent(
          message:
              'Obtenez-les dans le confort de votre appareil mobile.',
          imgName: ''),
    ];
  }

  static List<Category> getMockedCategories() {
    return [
      Category(
          name: "Vin Rouge",
          icon: "assets/icons/Image 71.png",
          color: AppColors.Vin_Rouge_Color,
          imgName: "vinrouge",
          subCategories: [
            SubCategory(
                name: 'Magon',
                icon: 'assets/icons/Image 71.png',
                color: AppColors.Vin_Rouge_Color,
                imgName: 'details_page_vinrouge',
                parts: [
                  CategoryPart(
                      name: "Magon", imgName: "magon", isSelected: false),
                  CategoryPart(
                      name: "Magon Chateaux",
                      imgName: "magon",
                      isSelected: false),
                  CategoryPart(
                      name: "Vieux Magon",
                      imgName: "vieux morgan",
                      isSelected: false)
                ]),
            SubCategory(
                name: 'Mornag',
                icon: 'assets/icons/Image 71.png',
                color: AppColors.Vin_Rouge_Color,
                imgName: 'details_page_vinrouge',
                parts: [
                  CategoryPart(name: "", imgName: "", isSelected: false)
                ]),
            SubCategory(
                name: 'Grand Patron',
                icon: 'assets/icons/Image 71.png',
                color: AppColors.Vin_Rouge_Color,
                imgName: 'grand patron',
                parts: [
                  CategoryPart(name: "", imgName: "", isSelected: false)
                ]),
            SubCategory(
                name: 'Selian Reserve',
                icon: 'assets/icons/Image 71.png',
                color: AppColors.Vin_Rouge_Color,
                imgName: 'Selian-ROUGE',
                parts: [
                  CategoryPart(name: "", imgName: "", isSelected: false)
                ]),
          ]),
      Category(
          name: "Vin Rosé",
          icon: "assets/icons/Image 72.png",
          color: AppColors.Vin_Rose_Color,
          imgName: "vinrose",
          subCategories: []),
      Category(
          name: "Vin Blanc",
          icon: "assets/icons/Image 70.png",
          color: AppColors.Vin_Blanc_Color,
          imgName: "vinblanc",
          subCategories: []),
      Category(
          name: "Whisky",
          icon: "assets/icons/whisky_icon.png",
          color: AppColors.Whisky_Color,
          imgName: "whisky",
          subCategories: []),
    ];
  }
}
