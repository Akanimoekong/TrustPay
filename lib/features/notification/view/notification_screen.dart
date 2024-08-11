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
import 'package:trustpay/features/notification/provider/notification_controller.dart';
import 'package:trustpay/features/notification/widgets/notification_tile.dart';
import 'package:trustpay/gen/assets.gen.dart';

@RoutePage()
class NotificationScreen extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: MyAppBar(
          title: 'Notifications',
          otherWidget: Assets.icons.trash.svg(),
          height: 50,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (cxt, index) {
                  return NotificationTile();
                })),
      ),
    );
  }
}
