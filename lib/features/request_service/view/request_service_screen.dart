import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:trustpay/component/app_bar.dart';
import 'package:trustpay/component/button.dart';
import 'package:trustpay/component/dropdown_text.dart';
import 'package:trustpay/component/text_field_with_text.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';
import 'package:trustpay/features/request_service/provider/request_service_controller.dart';
import 'package:trustpay/gen/assets.gen.dart';

@RoutePage()
class RequestServiceScreen extends GetView<RequestServiceController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: MyAppBar(
          title: 'Request Service',
          height: 50,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                40.height,
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Who are you Transacting with:',
                        style: GoogleFonts.sen(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppPalette.black))),
                16.height,
                InputWithTextHead(
                    title: 'Enter Username',
                    controller: controller.usernameController,
                    textFieldType: TextFieldType.EMAIL),
                16.height,
                MyDropDownWidget(
                    titile: 'Type of Service',
                    children: ['Cooking', 'Washing', ''],
                    useFirstDefault: false,
                    isEnabled: true,
                    myValue: '',
                    onChange: (value) {}),
                16.height,
                MyDropDownWidget(
                    titile: 'Pick MileStone',
                    children: ['Cooking', 'Washing', ''],
                    useFirstDefault: false,
                    isEnabled: true,
                    myValue: '',
                    onChange: (value) {}),
                16.height,
                MyDropDownWidget(
                    titile: 'Start Date',
                    children: ['Cooking', 'Washing', ''],
                    useFirstDefault: false,
                    isEnabled: true,
                    myValue: '',
                    onChange: (value) {}),
                16.height,
                MyDropDownWidget(
                    titile: 'Expected End Date',
                    children: ['Cooking', 'Washing', ''],
                    useFirstDefault: false,
                    isEnabled: true,
                    myValue: '',
                    onChange: (value) {}),
                16.height,
                MyDropDownWidget(
                    titile: 'Type of Service',
                    children: ['Cooking', 'Washing', ''],
                    useFirstDefault: false,
                    isEnabled: true,
                    myValue: '',
                    onChange: (value) {}),
                16.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Obx(
                          () => Checkbox(
                            checkColor: AppPalette.primary.primary400,
                            value: controller.isChecked.value,
                            onChanged: (bool? value) {},
                          ),
                        ),
                        Text(
                          'I agree with the terms and conditions',
                          style: context.theme.textTheme.bodySmall!.copyWith(
                              color: AppPalette.primary.primary400
                                  .withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ],
                ),
                16.height,
                AppElevatedButton(
                  color: AppPalette.primary.primary400,
                  radius: 16,
                  onPressed: () {},
                  text: 'Create Escrow',
                  width: size.width,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
