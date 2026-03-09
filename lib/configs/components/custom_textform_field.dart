// import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';
// import 'package:testt/src/configs/color/color.dart';
// import 'package:testt/src/configs/extensions.dart';
// import 'package:testt/src/configs/routes/slide_transition_page.dart';
// import 'package:testt/src/configs/theme/theme_text.dart';
// import 'package:testt/src/configs/utils.dart';

// class CustomTextFormField extends StatelessWidget {
//   final String titleText;
//   final String hintText;
//   final TextEditingController controller;
//   final Color color;
//   final Color borderColor;
//   final ValueChanged<Country?>? onCountrySelected;
//   final ValueChanged<String>? onPhoneNumberChanged;
//   final bool isPassword;
//   final int? minLines; // Minimum number of lines
//   final double? borderRadius; // Minimum number of lines
//   final int? maxLines; // Maximum number of lines
//   final Widget? leading; // Custom widget for leading
//   final Widget? trailing; // Custom widget for trailing
//   final String? errorText; // Add error text

//   const CustomTextFormField({
//     super.key,
//     required this.titleText,
//     required this.hintText,
//     required this.controller,
//     this.onCountrySelected,
//     this.color = Colors.white,
//     this.borderColor = Colors.black38,
//     this.onPhoneNumberChanged,
//     this.isPassword = false,
//     this.minLines = 1, // Allow customization of minimum lines
//     this.borderRadius = 12,
//     this.maxLines, // Allow customization of maximum lines
//     this.leading, // Custom leading widget (e.g., an icon or button)
//     this.trailing, // Custom trailing widget (e.g., clear button or icon)
//     this.errorText,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (titleText.isNotEmpty)
//           Text(
//             titleText,
//             style: const TextStyle(fontWeight: FontWeight.w500),
//           ),
//         const SizedBox(height: 8),
//         TextFormField(
//           controller: controller,
//           obscureText: isPassword,
//           style: Themetext.subheadline.copyWith(fontWeight: FontWeight.w500),
//           minLines: minLines ?? 1,
//           onTapOutside: (event) => Utils.dismissKeyboard(context),
//           maxLines: maxLines ?? 1,
//           decoration: InputDecoration(
//             contentPadding: const EdgeInsets.symmetric(
//               vertical: 10, // Center vertically
//               horizontal: 12, // Padding for horizontal alignment
//             ),
//             filled: true,
//             fillColor: color,
//             hintText: hintText,
//             hintStyle: const TextStyle(
//               color: Colors.black45,
//               fontWeight: FontWeight.w400,
//               fontSize: 15,
//             ),
//             errorText: errorText,
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(borderRadius ?? 12),
//               borderSide: BorderSide(color: borderColor),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(borderRadius ?? 12),
//               borderSide: BorderSide(color: borderColor),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(borderRadius ?? 12),
//               borderSide:
//                   const BorderSide(color: AppColors.checkbox, width: 1.5),
//             ),
//             errorBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(borderRadius ?? 12),
//               borderSide: const BorderSide(color: Colors.red, width: 1.5),
//             ),
//             prefixIcon: leading != null
//                 ? Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: leading,
//                   )
//                 : null,
//             suffixIcon: trailing != null
//                 ? Container(
//                     height: context.mediaQueryHeight / 20,
//                     padding: const EdgeInsets.all(8.0),
//                     child: trailing,
//                   )
//                 : null,
//           ),
//           onChanged: (value) {
//             if (onPhoneNumberChanged != null) {
//               onPhoneNumberChanged!(value);
//             }
//           },
//         ),
//         SizedBox(height: context.mediaQueryHeight / 90),
//       ],
//     );
//   }
// }

// class SearchFeildForHomeScreen extends StatelessWidget {
//   final String titleText;
//   final String hintText;
//   final Widget navigateTo;
//   final TextEditingController controller;
//   final Color color;
//   final Color borderColor;
//   final ValueChanged<Country?>? onCountrySelected;
//   final ValueChanged<String>? onPhoneNumberChanged;
//   final bool isPassword;
//   final int? minLines; // Minimum number of lines
//   final double? borderRadius; // Minimum number of lines
//   final int? maxLines; // Maximum number of lines
//   final Widget? leading; // Custom widget for leading
//   final Widget? trailing; // Custom widget for trailing
//   final String? errorText; // Add error text

//   const SearchFeildForHomeScreen({
//     super.key,
//     required this.titleText,
//     required this.hintText,
//     required this.controller,
//     this.onCountrySelected,
//     this.color = Colors.white,
//     this.borderColor = Colors.black38,
//     this.onPhoneNumberChanged,
//     this.isPassword = false,
//     this.minLines = 1, // Allow customization of minimum lines
//     this.borderRadius = 12,
//     this.maxLines, // Allow customization of maximum lines
//     this.leading, // Custom leading widget (e.g., an icon or button)
//     this.trailing, // Custom trailing widget (e.g., clear button or icon)
//     this.errorText, required this.navigateTo,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (titleText.isNotEmpty)
//           Text(
//             titleText,
//             style: const TextStyle(fontWeight: FontWeight.w500),
//           ),
//         const SizedBox(height: 8),
//         TextFormField(
//           readOnly: true,
//           controller: controller,
//           obscureText: isPassword,
//           style: Themetext.subheadline.copyWith(fontWeight: FontWeight.w500),
//           minLines: minLines ?? 1,

//           onTap: () {
//             context.read<NavigationProvider>().updateIndex(0);

//             Navigator.push(
//               context,
//               SlideTransitionPage(
//                   page: SearchScreen(
//                 navigateTo: navigateTo,
//               )),
//             );
//           },
//           onTapOutside: (event) => Utils.dismissKeyboard(context),
//           maxLines: maxLines ?? 1,
//           decoration: InputDecoration(
//             contentPadding: const EdgeInsets.symmetric(
//               vertical: 10, // Center vertically
//               horizontal: 12, // Padding for horizontal alignment
//             ),
//             filled: true,
//             fillColor: color,
//             hintText: hintText,
//             hintStyle: const TextStyle(
//               color: Colors.black45,
//               fontWeight: FontWeight.w400,
//               fontSize: 15,
//             ),
//             errorText: errorText,
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(borderRadius ?? 12),
//               borderSide: BorderSide(color: borderColor),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(borderRadius ?? 12),
//               borderSide: BorderSide(color: borderColor),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(borderRadius ?? 12),
//               borderSide:
//                   const BorderSide(color: AppColors.checkbox, width: 1.5),
//             ),
//             errorBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(borderRadius ?? 12),
//               borderSide: const BorderSide(color: Colors.red, width: 1.5),
//             ),
//             prefixIcon: leading != null
//                 ? Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: leading,
//                   )
//                 : null,
//             suffixIcon: trailing != null
//                 ? Container(
//                     height: context.mediaQueryHeight / 20,
//                     padding: const EdgeInsets.all(8.0),
//                     child: trailing,
//                   )
//                 : null,
//           ),
//           onChanged: (value) {
//             if (onPhoneNumberChanged != null) {
//               onPhoneNumberChanged!(value);
//             }
//           },
//         ),
//         SizedBox(height: context.mediaQueryHeight / 90),
//       ],
//     );
//   }
// }
