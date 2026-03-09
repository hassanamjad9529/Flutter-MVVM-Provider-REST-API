import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testt/configs/color/color.dart';
import 'package:testt/configs/components/round_button.dart';
import 'package:testt/configs/extensions.dart';



class CustomAlertDialog extends StatelessWidget {
  final String title;
  final List<TextSpan> contentSpans; // Support for styled content
  final String buttonText;
  final VoidCallback onButtonPressed;
  final String? icon;
  final Color buttonColor;
  final Color backgroundColor;
  final Color iconColor;
  final String cancelButtonText;
  final VoidCallback onCancelPressed;

  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.contentSpans,
    required this.buttonText,
    required this.onButtonPressed,
    this.icon,
    this.buttonColor = AppColors.primary,
    this.backgroundColor = Colors.white,
    this.iconColor = AppColors.primary,
    this.cancelButtonText = 'Cancel',
    required this.onCancelPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(29),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null && icon!.isNotEmpty)
            icon!.endsWith('.svg')
                ? icon!.contains('delete_bucket')
                    ? SvgPicture.asset(
                        icon!,
                        height: 70.sp,
                      )
                    : SvgPicture.asset(
                        icon!,
                        // ignore: deprecated_member_use
                        color: iconColor,
                      )
                : Image.asset(icon!, height: 24, width: 24, color: iconColor),
          if (icon != null && icon!.isNotEmpty) SizedBox(width: 8),
          Flexible(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            text: TextSpan(
              children: contentSpans,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundButton(
              borderRadius: 15,
              width: context.mediaQueryWidth / 3.5,
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              color: AppColors.greyColor,
              title: cancelButtonText,
              onPress: onCancelPressed,
            ),
            SizedBox(
              width: 15.sp,
            ),
            RoundButton(
              borderRadius: 15,
              width: context.mediaQueryWidth / 3.5,
              textStyle: const TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              color: AppColors.redLight,
              title: buttonText,
              onPress: onButtonPressed,
            ),
          ],
        ),
      ],
    );
  }
}



