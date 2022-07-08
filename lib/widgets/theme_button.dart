import 'package:flutter/material.dart';
import 'package:winy/helpers/appcolors.dart';

class ThemeButton extends StatelessWidget {
  String? label;
  Function onClick;
  Color color;
  Color? highlight;
  Widget? icon;
  Color borderColor;
  Color labelColor;
  double borderWidth;
  ThemeButton(
      {this.label,
        required this.onClick,
        this.color = AppColors.Main_Color,
        this.highlight = AppColors.HIGHTLIGHT_DEFAULT,
        this.icon,
        this.borderColor = Colors.transparent,
        this.labelColor = Colors.white,
        this.borderWidth = 4});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Material(
          color: color,
          child: InkWell(
            splashColor: highlight?.withOpacity(0.2),
            highlightColor: highlight?.withOpacity(0.2),
            onTap: () {
              onClick();
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: borderColor,
                  width: borderWidth
                )
              ),
              child: icon == null ?
              Text(
                label.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: labelColor,
                    fontWeight: FontWeight.bold,
                ),
              ) : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  const SizedBox(width: 10,),
                  Text(label!,style: TextStyle(
                    color: labelColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold

                  ),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
