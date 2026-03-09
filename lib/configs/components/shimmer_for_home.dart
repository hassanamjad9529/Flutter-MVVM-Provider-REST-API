import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testt/configs/extensions.dart';

class VechileHorizantalCardShimmer extends StatelessWidget {
  const VechileHorizantalCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.mediaQueryHeight / 4.5,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 8),
        scrollDirection: Axis.horizontal,
        itemCount: 3, // Number of shimmer items
        itemBuilder: (context, index) {
          return _buildShimmerItem(context);
        },
      ),
    );
  }

  Widget _buildShimmerItem(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: 230.w,
        margin: EdgeInsets.symmetric(horizontal: 4.sp),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(4),
                height: 90.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150.w,
                      height: 20.h,
                      color: Colors.grey[300],
                    ),
                    SizedBox(height: context.mediaQueryHeight / 75),
                    Container(
                      width: 100.w,
                      height: 20.h,
                      color: Colors.grey[300],
                    ),
                    SizedBox(height: context.mediaQueryHeight / 75),
                    Container(
                      width: 80.w,
                      height: 20.h,
                      color: Colors.grey[300],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
