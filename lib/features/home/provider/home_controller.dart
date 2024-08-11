import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trustpay/core/router/locator.dart';
import 'package:trustpay/core/router/router.dart';

class HomeController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isChecked = false.obs;

  void requestService(BuildContext context) {
    appRoute.push(RequestServiceRoute());
    log('I got called');
  }
}
