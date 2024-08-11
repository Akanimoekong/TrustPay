import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;
import 'package:trustpay/core/router/locator.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    required this.title,
    this.textColor,
    this.onPress,
    this.height,
    this.onPressVert,
    this.otherWidget,
    this.iconTheme,
    this.showback = true,
    this.showVert = false,
  });
  final String title;
  final bool showback;
  final bool showVert;
  final double? height;

  final IconThemeData? iconTheme;
  final Widget? otherWidget;
  final Color? textColor;
  final VoidCallback? onPress;
  final VoidCallback? onPressVert;

  @override
  Size get preferredSize => Size.fromHeight(height ?? 70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: height ?? 70,
      iconTheme: iconTheme,
      flexibleSpace: SizedBox(
        // color: ThemeConfig.primaryColor,
        height: height ?? 70,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            5.height,
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        16.width,
                        if (showback)
                          GestureDetector(
                              onTap: onPress ??
                                  () {
                                    appRoute.pop();
                                  },
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                              )),
                      ],
                    ),
                    16.width,

                    //   25.width,
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                              fontSize: 18,
                              fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF111719),
                            ),
                      ),
                    ),
                  ],
                ),
                if (!showVert) 25.width,
                if (showVert)
                  InkWell(
                    onTap: onPressVert,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [const Icon(Icons.more_vert), 20.width],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: otherWidget ?? Container(),
                )
              ],
            ),
            10.height,
          ],
        ),
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   return SizedBox(
  //     // color: ThemeConfig.primaryColor,
  //     height: 70,
  //     child: Row(
  //       mainAxisSize: MainAxisSize.max,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         //  15.width,
  //         Row(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             15.width,
  //             if (showback)
  //               GestureDetector(
  //                   onTap: onPress ??
  //                       () {
  //                         appRoute.pop();
  //                       },
  //                   child: Container(
  //                     width: 40,
  //                     height: 40,
  //                     decoration: ShapeDecoration(
  //                       color: AppPalette.white,
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(10),
  //                       ),
  //                     ),
  //                     child: const Icon(
  //                       Icons.arrow_back_ios_new,
  //                       color: Colors.black,
  //                     ),
  //                   )),
  //           ],
  //         ),

  //         //   25.width,
  //         Align(
  //           alignment: Alignment.center,
  //           child: Text(
  //             title,
  //             style: Theme.of(context).textTheme.displaySmall!.copyWith(
  //                   fontSize: 18,
  //                   fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
  //                   fontWeight: FontWeight.w700,
  //                   color: const Color(0xFF111719),
  //                 ),
  //           ),
  //         ),
  //         25.width,
  //       ],
  //     ),
  //   );
  // }
}
