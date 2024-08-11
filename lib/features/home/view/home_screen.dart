import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:trustpay/component/button.dart';
import 'package:trustpay/component/text_field_with_text.dart';
import 'package:trustpay/core/router/locator.dart';
import 'package:trustpay/core/router/router.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';
import 'package:trustpay/features/home/provider/home_controller.dart';
import 'package:trustpay/features/home/widgets/history_tile.dart';
import 'package:trustpay/gen/assets.gen.dart';

@RoutePage()
class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Assets.images.homeBackground.path),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    48.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.purple.shade300,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Akanimo Ekong',
                                    style: GoogleFonts.sen(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: AppPalette.white)),
                                Text('Uso Atai Office',
                                    style: GoogleFonts.sen(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: AppPalette.white)),
                              ],
                            ),
                          ],
                        ),
                        InkWell(
                            onTap: () {
                              appRoute.push(const NotificationRoute());
                            },
                            child: Assets.icons.notificationIcon.svg())
                      ],
                    ),
                    8.height,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('USD',
                          style: GoogleFonts.sen(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: AppPalette.white)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$826.23',
                            style: GoogleFonts.sen(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: AppPalette.white)),
                        IconButton(
                            onPressed: () {},
                            icon: Assets.icons.invisibleIcon.svg())
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Last updated 2mins ago',
                          style: GoogleFonts.sen(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: AppPalette.white)),
                    ),
                    32.height,
                    Row(
                      children: [
                        Expanded(
                            child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppPalette.lightPurple,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Assets.icons.moneyRecive.svg(),
                                  4.width,
                                  Text(
                                    'Deposit',
                                    style: context.textTheme.bodyMedium!
                                        .copyWith(color: AppPalette.white),
                                  )
                                ],
                              )),
                        )),
                        16.width,
                        Expanded(
                            child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppPalette.lightPurple,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Assets.icons.moneySend.svg(),
                                  4.width,
                                  Text(
                                    'WithDraw',
                                    style: context.textTheme.bodyMedium!
                                        .copyWith(color: AppPalette.white),
                                  )
                                ],
                              )),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
              16.height,
              Expanded(
                child: Container(
                  width: size.width,
                  padding: EdgeInsets.only(top: 16, left: 16),
                  color: AppPalette.white,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Quick Actions',
                            style: GoogleFonts.sen(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: AppPalette.black)),
                      ),
                      16.height,
                      SizedBox(
                        height: size.height / 30,
                        width: size.width,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 4),
                                height: 30,
                                width: 90,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        backgroundColor:
                                            AppPalette.primary.primary400),
                                    onPressed: () {},
                                    child: Text(
                                      "Active",
                                      style: context.theme.textTheme.bodySmall!
                                          .copyWith(color: AppPalette.white),
                                    )),
                              );
                            }),
                      ),
                      16.height,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: SizedBox(
                          height: 56,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 5.0,
                                          color: AppPalette.lightPurple),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16)))),
                              onPressed: () {
                                controller.requestService(context);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Request Service',
                                      style: GoogleFonts.sen(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color:
                                              AppPalette.primary.primary300)),
                                  16.width,
                                  Assets.icons.arrowRight.svg(),
                                ],
                              )),
                        ),
                      ),
                      16.height,
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 10,
                              itemBuilder: (cxt, index) {
                                return DashBoardHistoryTile();
                              }),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
