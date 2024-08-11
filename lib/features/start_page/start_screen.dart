import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trustpay/core/router/locator.dart';
import 'package:trustpay/core/router/router.dart';
import 'package:trustpay/core/storage/storage_service.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';
import 'package:trustpay/gen/assets.gen.dart';

@RoutePage()
class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final storageService = Get.find<StorageService>();
  @override
  void initState() {
  Future.delayed(const Duration(seconds: 3), () {
    // FlutterNativeSplash.remove();
  });
    appRoute.replaceAll([const LoginRoute()]);

    // if (storageService.getToken() != null) {
    //   if (storageService.getToken()!.trim() != "Bearer") {
    //     appRoute.replaceAll([const DashboardRoute()]);
    //   } else {
    //     appRoute.replaceAll([const OnboardingRoute()]);
    //   }
    // } else {
    //   appRoute.replaceAll([const OnboardingRoute()]);
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.primary.primary400,
      body: Center(
        child: Assets.icons.appIcon
            .svg(height: 150, width: 150, fit: BoxFit.contain),
      ),
    );
  }
}
