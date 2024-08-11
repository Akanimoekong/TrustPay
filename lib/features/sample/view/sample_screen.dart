import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:trustpay/component/app_bar.dart';
import 'package:trustpay/component/button.dart';
import 'package:trustpay/component/text_field_with_text.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';
import 'package:trustpay/features/login/provider/login_controller.dart';
import 'package:trustpay/features/sample/provider/sample_controller.dart';
import 'package:trustpay/gen/assets.gen.dart';

@RoutePage()
class SampleScreen extends GetView<SampleController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: MyAppBar(title: 'Sample Page'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
            ],
          ),
        ),
      ),
    );
  }
}
