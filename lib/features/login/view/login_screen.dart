import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:trustpay/component/button.dart';
import 'package:trustpay/component/text_field_with_text.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';
import 'package:trustpay/features/login/provider/login_controller.dart';
import 'package:trustpay/gen/assets.gen.dart';

@RoutePage()
class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              80.height,
              Align(
                alignment: Alignment.center,
                child: Assets.icons.appIconWhite.svg(),
              ),
              32.height,
              InputWithTextHead(
                  title: 'EMAIL',
                  controller: controller.emailController,
                  textFieldType: TextFieldType.EMAIL),
              16.height,
              InputWithTextHead(
                  title: 'PASSWORD',
                  controller: controller.passwordController,
                  textFieldType: TextFieldType.PASSWORD),
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
                        'Remember me',
                        style: context.theme.textTheme.bodySmall!.copyWith(
                            color:
                                AppPalette.primary.primary400.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  Text(
                    'Forgot Password',
                    style: context.theme.textTheme.bodySmall!.copyWith(
                        color: AppPalette.primary.primary400.withOpacity(0.9)),
                  ),
                ],
              ),
              16.height,
              AppElevatedButton(
                color: AppPalette.primary.primary400,
                radius: 16,
                onPressed: () {
                  controller.gotoDashBoard(context);
                },
                text: 'LOG IN',
                width: size.width,
              ),
              32.height,
              RichTextWidget(list: [
                TextSpan(
                  text: 'Dont have an account?',
                  style: context.theme.textTheme.bodyMedium!.copyWith(
                    color: AppPalette.deepAsh,
                  ),
                ),
                TextSpan(
                  text: '  SIGN UP',
                  style: context.theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.orange, fontWeight: FontWeight.w600),
                ),
              ]),
              18.height,
              Text(
                'Or',
                style: context.theme.textTheme.bodyLarge!.copyWith(
                  color: AppPalette.deepAsh,
                ),
              ),
              32.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.icons.facebookIcon.svg(),
                    Assets.images.googlePng.image(),
                    Assets.icons.appleIcon.svg(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
