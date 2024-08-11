import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:trustpay/component/input_decoration.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';

class InputWithMoneyFormat extends StatelessWidget {
  const InputWithMoneyFormat(
      {super.key,
      required this.title,
      this.hintText,
      this.fontSize = 16,
      required this.controller,
      required this.textFieldType,
      this.textColor = Colors.white,
      this.isReadOnly = false,
      this.onChange});

  final String title;
  final double fontSize;
  final TextEditingController controller;
  final TextFieldType textFieldType;
  final Color textColor;
  final String? hintText;
  final bool isReadOnly;

  final Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    String formNum(String s) {
      return NumberFormat.decimalPattern().format(
        int.parse(s),
      );
    }

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
                      fontWeight: FontWeight.bold,
                      // color: const Color(0xFFA1E3D8),
                    ),
              ),
            ],
          ),
        ),
        4.height,
        AppTextField(
          
          textFieldType: textFieldType,
          keyboardType: TextInputType.number,
          
          readOnly: isReadOnly,
          onChanged: (string) {
            string = formNum(
              string.replaceAll(',', ''),
            );
            controller.value = TextEditingValue(
              text: string,
              selection: TextSelection.collapsed(
                offset: string.length,
              ),
            );
            onChange!(string);
          },
          decoration: inputDecoration(
              hintText: hintText,
              
              hintStyle: TextStyle(
                  fontSize: 16,
                  color: AppPalette.grey.gray340,
                  fontFamily: GoogleFonts.dmSans().fontFamily),
              fillColor: AppPalette.grey.gray150,
              radius: 10,
              borderColor: Colors.transparent),
          isValidationRequired: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Field is required';
            } else {
              return null;
            }
          },
          suffixIconColor: AppPalette.grey.gray400,
          // onChanged: onChange,
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
