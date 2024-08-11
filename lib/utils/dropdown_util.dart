import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// class DropdownData {
//   final List<String> items;
//   final String? selectedValue;

//   DropdownData({required this.items, required this.selectedValue});
// }

// class MyDropdownButton extends StatelessWidget {
//   final DropdownData dropdownData;
//   final Function(String?) onChanged;
//   final String initialText;

//   const MyDropdownButton(
//       {required this.dropdownData,
//       required this.onChanged,
//       required this.initialText});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => DropdownButtonHideUnderline(
//         child: DropdownButton2<String>(
//           isExpanded: true,
//           hint: Row(
//             children: [
//               Expanded(
//                 child: Text(
//                   initialText,
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     color: AppPalette.grey.gray600,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           items: dropdownData.items
//               .map((String item) => DropdownMenuItem<String>(
//                     value: item,
//                     child: Text(
//                       item,
//                       style: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ))
//               .toList(),
//           value: dropdownData.selectedValue,
//           onChanged: onChanged,
//           buttonStyleData: ButtonStyleData(
//             height: 56,
//             width: 160,
//             padding: const EdgeInsets.only(left: 14, right: 14),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               color: AppPalette.blue100,
//             ),
//           ),
//           iconStyleData: const IconStyleData(
//             icon: Icon(
//               Icons.arrow_drop_down_outlined,
//             ),
//             iconSize: 14,
//             iconEnabledColor: AppPalette.black,
//             iconDisabledColor: Colors.grey,
//           ),
//           dropdownStyleData: DropdownStyleData(
//             maxHeight: 200,
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(14),
//               color: Colors.white,
//             ),
//           ),
//           menuItemStyleData: const MenuItemStyleData(
//             height: 40,
//             padding: EdgeInsets.only(left: 14, right: 14),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';


class DropdownData {
  final List<String> items;
  final String? selectedValue;

  DropdownData({required this.items, required this.selectedValue});
}

class MyDropdownButton extends StatelessWidget {
  final DropdownData dropdownData;
  final Function(String?) onChanged;
  late RxString initialText;

  MyDropdownButton({
    required this.dropdownData,
    required this.onChanged,
    required String initialText,
  }) {
    this.initialText = initialText.obs;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Row(
            children: [
              Expanded(
                child: Text(
                  initialText.value, // <-- Use the value from the observable
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppPalette.grey.gray600,
                  ),
                ),
              ),
            ],
          ),
          items: dropdownData.items.map((String item) {
            Color fontColor = Colors.black;
            if (item == "No Category") {
              fontColor = AppPalette.errorRed;
            }
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: fontColor,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          value: dropdownData.selectedValue,
          onChanged: (value) {
            initialText.value = value ?? ''; // <-- Update the observable value
            onChanged(value);
          },
          buttonStyleData: ButtonStyleData(
            height: 56,
            width: 160,
            padding: const EdgeInsets.only(left: 14, right: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppPalette.blue100,
            ),
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
            ),
            iconSize: 14,
            iconEnabledColor: AppPalette.black,
            iconDisabledColor: Colors.grey,
          ),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 200,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
            padding: EdgeInsets.only(left: 14, right: 14),
          ),
        ),
      ),
    );
  }
}
