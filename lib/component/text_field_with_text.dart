import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:trustpay/component/input_decoration.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';

class InputWithTextHead extends StatelessWidget {
  const InputWithTextHead(
      {super.key,
      required this.title,
      this.hintText,
      this.initialValue,
      this.fontSize = 14,
      required this.controller,
      required this.textFieldType,
      this.textColor = Colors.white,
      this.prefixIcon,
      this.maxLength,
      this.textInputType,
      this.suffixIcons,
      this.isReadOnly = false,
      this.onTap,
      this.onChange,
      this.validator});

  final String title;
  final double fontSize;
  final TextEditingController controller;
  final TextFieldType textFieldType;
  final Color textColor;
  final bool isReadOnly;
  final Widget? prefixIcon;
  final Widget? suffixIcons;
  final String? hintText;
  final String? initialValue;
  final int? maxLength;
  final VoidCallback? onTap;
  final TextInputType? textInputType;

  final Function(String)? onChange;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: fontSize,
                      color: AppPalette.black,
                      fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
                      fontWeight: FontWeight.w400,
                      // color: const Color(0xFFA1E3D8),
                    ),
              ),
            ],
          ),
        ),
        4.height,
        AppTextField(
          maxLength: maxLength,
          initialValue: initialValue,
          textFieldType: textFieldType,
          keyboardType: textInputType,
          decoration: inputDecoration(
              prefixIcon: prefixIcon,
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: 14,
                  color: AppPalette.grey.gray350,
                  fontFamily: GoogleFonts.dmSans().fontFamily),
              fillColor: AppPalette.grey.gray150,
              radius: 12,
              borderColor: Colors.transparent),
          isValidationRequired: true,
          validator: validator,
          onTap: onTap,
          readOnly: isReadOnly,
          suffix: suffixIcons,
          suffixIconColor: AppPalette.grey.gray400,
          onChanged: onChange,
          textStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontSize: 16,
              fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
              // fontWeight: FontWeight.bold,
              color: const Color(0xFF000000)),
          controller: controller,
        )
      ],
    );
  }
}

class MyCustomTextField extends StatelessWidget {
  const MyCustomTextField(
      {super.key,
      this.hintText,
      this.initialValue,
      this.fontSize = 14,
      required this.controller,
      required this.textFieldType,
      this.textColor = Colors.white,
      this.prefixIcon,
      this.maxLength,
      this.textInputType,
      this.suffixIcons,
      this.isReadOnly = false,
      this.onTap,
      this.onChange,
      this.validator});

  final double fontSize;
  final TextEditingController controller;
  final TextFieldType textFieldType;
  final Color textColor;
  final bool isReadOnly;
  final Widget? prefixIcon;
  final Widget? suffixIcons;
  final String? hintText;
  final String? initialValue;
  final int? maxLength;
  final VoidCallback? onTap;
  final TextInputType? textInputType;
  final Function(String)? onChange;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          maxLength: maxLength,
          initialValue: initialValue,
          textFieldType: textFieldType,
          keyboardType: textInputType,
          decoration: inputDecoration(
              prefixIcon: prefixIcon,
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: 14,
                  color: AppPalette.grey.gray350,
                  fontFamily: GoogleFonts.dmSans().fontFamily),
              fillColor: AppPalette.grey.gray150,
              radius: 10,
              borderColor: Colors.transparent),
          isValidationRequired: true,
          validator: validator,
          onTap: onTap,
          readOnly: isReadOnly,
          suffix: suffixIcons,
          suffixIconColor: AppPalette.grey.gray400,
          onChanged: onChange,
          textStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontSize: 16,
              fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
              // fontWeight: FontWeight.bold,
              color: const Color(0xFF000000)),
          controller: controller,
        ),
      ],
    );
  }
}
