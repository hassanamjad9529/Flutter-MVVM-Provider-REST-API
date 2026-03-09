// import 'package:flutter/material.dart';
// import 'package:country_picker/country_picker.dart';
// import 'package:testt/src/configs/theme/theme_text.dart';
// import 'package:testt/src/configs/utils.dart';

// class CustomTextFormField extends StatefulWidget {
//   final String hintText;
//   final TextEditingController controller;
//   final Color color;
//   final Color borderColor;
//   final ValueChanged<Country?>? onCountrySelected;
//   final ValueChanged<String>? onPhoneNumberChanged;
//   final bool isPassword;
//   final bool autoDismissKeyboard;
//   final int? minLines;
//   final int? maxLines;

//   const CustomTextFormField({
//     super.key,
//     required this.hintText,
//     required this.controller,
//     this.onCountrySelected,
//     this.color = Colors.transparent,
//     this.borderColor = Colors.black38,
//     this.onPhoneNumberChanged,
//     this.isPassword = false,
//     this.autoDismissKeyboard = true,
//     this.minLines = 1,
//     this.maxLines,
//   });

//   @override
//   _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
// }

// class _CustomTextFormFieldState extends State<CustomTextFormField> {
//   Country? selectedCountry;
//   bool _isObscure = true; // State to toggle password visibility

//   @override
//   void initState() {
//     super.initState();
//     _isObscure = widget.isPassword; // Initialize based on `isPassword`
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: widget.color,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: widget.borderColor),
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextFormField(
//               controller: widget.controller,
//               obscureText: widget.isPassword ? _isObscure : false,
//               style: Themetext.subheadline,
//               minLines: widget.minLines,
//               maxLines: widget.isPassword ? 1 : widget.maxLines,
//               onTapOutside: (event) {
//                 if (widget.autoDismissKeyboard) {
//                   Utils.dismissKeyboard(context);
//                 }
//               },
//               decoration: InputDecoration(
//                 contentPadding:
//                     const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                 focusedBorder: InputBorder.none,
//                 enabledBorder: InputBorder.none,
//                 border: InputBorder.none,
//                 hintText: widget.hintText,
//                 hintStyle: const TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w200,
//                   fontSize: 15,
//                 ),
//                 filled: true,
//                 fillColor: Colors.transparent,
//               ),
//               onChanged: (value) {
//                 if (widget.onPhoneNumberChanged != null) {
//                   widget.onPhoneNumberChanged!(value);
//                 }
//               },
//             ),
//           ),
//           if (widget.isPassword)
//             IconButton(
//               icon: Icon(
//                 _isObscure ? Icons.visibility_off : Icons.visibility,
//                 color: Colors.black38,
//               ),
//               onPressed: () {
//                 setState(() {
//                   _isObscure = !_isObscure; // Toggle visibility state
//                 });
//               },
//             ),
//         ],
//       ),
//     );
//   }
// }
