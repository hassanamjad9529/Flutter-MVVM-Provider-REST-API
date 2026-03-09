import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:testt/configs/extensions.dart';

Widget buildNewsShimmerWidget(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Wrap(
      spacing: 8.0, // Horizontal spacing
      runSpacing: 8.0, // Vertical spacing
      children: List.generate(3, (index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: context.mediaQueryWidth / 3,
                  margin: const EdgeInsets.all(2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      color: Colors.grey.shade300,
                      height: 120,
                      width: double.infinity,
                    ),
                  ),
                ),
                // Text Content
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.grey.shade300,
                          height: 20,
                          width: double.infinity,
                        ),
                        const SizedBox(height: 8),
                        Container(
                          color: Colors.grey.shade300,
                          height: 20,
                          width: double.infinity,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    ),
  );
}