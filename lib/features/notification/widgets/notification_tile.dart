import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      color: AppPalette.white,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
      elevation: 4,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.zero)),
        width: size.width,
        height: size.height / 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple.shade900,
                  ),
                ),
                8.width,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Akanimo Ekong',
                            style: GoogleFonts.sen(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: AppPalette.black)),
                        Text('\$500',
                            style: GoogleFonts.sen(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppPalette.black)),
                      ],
                    ),
                    8.height,
                    Expanded(
                      child: Text(
                        'You have successfully verified and complete all login processes',
                        style: GoogleFonts.sen(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: AppPalette.black),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2, // Allow up to 2 lines
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
