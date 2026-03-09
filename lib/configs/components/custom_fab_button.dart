import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testt/configs/color/color.dart';

class CustomFabButton extends StatelessWidget {
  const CustomFabButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: UniqueKey().toString(),
      onPressed: () {

      },
      shape: CircleBorder(),
      backgroundColor: AppColors.primary,
      child: Icon(
        Icons.add,
        size: 30.0.sp,
        color: AppColors.white,
      ),
    );
  }
}
