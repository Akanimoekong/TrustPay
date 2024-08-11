import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trustpay/core/router/locator.dart';
import 'package:trustpay/core/router/router.dart';

class NotificationController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isChecked = false.obs;

  void gotoDashBoard(BuildContext context) {
    appRoute.replaceAll([const DashboardRoute()]);
  }
}
