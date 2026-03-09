import 'package:flutter/material.dart';
import 'package:testt/configs/color/color.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        margin: EdgeInsets.all(6),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: AppColors.white),
        child: Directionality(
            textDirection: Localizations.localeOf(context).languageCode == 'en'
                ? TextDirection.ltr
                : TextDirection.rtl,
            child: Icon(
              Icons.arrow_back,
              size: 20,
            )),
      ),
    );
  }
}

class CustomBackButtonForDetailsScreen extends StatelessWidget {
  const CustomBackButtonForDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        margin: EdgeInsets.all(6),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: AppColors.white),
        child: Directionality(
            textDirection: Localizations.localeOf(context).languageCode == 'en'
                ? TextDirection.ltr
                : TextDirection.ltr,
            child: Icon(
              Icons.arrow_back,
              size: 20,
            )),
      ),
    );
  }
}
