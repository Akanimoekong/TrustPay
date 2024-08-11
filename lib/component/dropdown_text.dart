import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;
import 'package:trustpay/component/input_decoration.dart';
import 'package:trustpay/core/theme/new_theme/app_theme.dart';
import 'package:trustpay/gen/assets.gen.dart';

import '../core/theme/new_theme/app_color.dart';

class MyDropDownWidget extends HookWidget {
  const MyDropDownWidget(
      {super.key,
      required this.titile,
      this.hintText = "Select your answer",
      required this.children,
      required this.isEnabled,
      this.showRequired = false,
      this.useFirstDefault = false,
      this.myValue = '',
      this.validator,
      this.fontSize = 13,
      required this.onChange,
      this.onTap});
  final String titile;
  final String hintText;
  final String myValue;
  final double fontSize;

  final List<String> children;
  final bool isEnabled, showRequired, useFirstDefault;

  final Function(String value) onChange;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final selectedValue = useState('');
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  titile,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: fontSize,
                        color: AppPalette.black,
                        fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
                        fontWeight: FontWeight.w400,
                        // color: const Color(0xFFA1E3D8),
                      ),
                ),
              ),
              if (showRequired)
                Text(
                  ' *',
                  style: context.theme.appTextTheme.bodyLarge18.copyWith(
                      color: AppPalette.red.red300,
                      fontWeight: FontWeight.w600),
                ),
            ],
          ),
          5.height,
          DropdownButtonFormField<String>(
            validator: validator,
            isExpanded: true,
            onTap: onTap,
            value: useFirstDefault ? children.first : myValue,
            icon: const SizedBox(
              height: 0,
              width: 0,
            ),
            decoration: inputDecoration(
              fillColor: AppPalette.grey.gray150,
              borderColor: AppPalette.grey.gray150,
              suffixIcon: SvgPicture.asset(Assets.icons.arrowDown.path,
                  height: 5, width: 5, fit: BoxFit.scaleDown),
            ),
            hint: Text(
              hintText,
              overflow: TextOverflow.ellipsis,
              style: context.theme.appTextTheme.bodySmall14.copyWith(
                color: AppPalette.grey.gray350,
                fontWeight: FontWeight.w400,
              ),
            ),
            items: [...children].map((String value) {
              return DropdownMenuItem<String>(
                enabled: isEnabled,
                value: value,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                    style: context.theme.appTextTheme.bodyMedium16.copyWith(
                      color: AppPalette.dark.dark50,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              );
            }).toList(),
            onChanged: (value) {
              onChange(value!);
            },
          )
        ],
      ),
    );
  }
}
