import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trustpay/component/loader.dart';
import 'package:trustpay/core/network/network_client.dart';
import 'package:trustpay/core/router/locator.dart';
import 'package:trustpay/core/router/router.dart';

class LoginController extends GetxController {
  final networkService = Get.find<NetworkService>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isChecked = false.obs;

  login(BuildContext context) async {
    try {
      showLoader(context);
      final res = await networkService.loginUser(
          {"email": emailController.text, "password": passwordController.text});
      log(res.toString());
    }  catch  (e) {
      
      
    }
  }

  Future<void> gotoDashBoard(BuildContext context) async {
    await login(context);
    // appRoute.replaceAll([const DashboardRoute()]);
  }
}
