import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trustpay/core/router/router.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';
import 'package:trustpay/core/theme/new_theme/app_theme.dart';

import '../../../../gen/assets.gen.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        HomeRoute(),
        ComingSoonRoute(),
        ComingSoonRoute(),
      
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          /* appBar: AppBar(
              title: Text(context.topRoute.name),
              leading: const AutoLeadingButton()), */
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            selectedItemColor: AppPalette.primary.primary400,
            unselectedItemColor: AppPalette.grey.gray400,
            selectedLabelStyle: context.myTheme.appTextTheme.bodySmall14
                .copyWith(
                    color: AppPalette.primary.primary400,
                    fontWeight: FontWeight.w500),
            unselectedLabelStyle: context.myTheme.appTextTheme.bodySmall14
                .copyWith(
                    color: AppPalette.grey.gray200,
                    fontWeight: FontWeight.w500),
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Assets.icons.homeInactive.svg(),
                activeIcon: Assets.icons.homeActive.svg(),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.createInactive.svg(),
                activeIcon: Assets.icons.createActive.svg(),
                label: 'Create',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.settingInactive.svg(),
                activeIcon: Assets.icons.settingActive.svg(),
                label: 'Settings',
              ),
              


            ],
          ),
        );
      },
    );
  }
}
