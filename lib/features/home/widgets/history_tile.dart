import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';

class DashBoardHistoryTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // TODO: implement build
    return Container(
      width: size.width,
      height: size.height / 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple.shade300,
                ),
              ),
              8.width,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Akanimo Ekong',
                      style: GoogleFonts.sen(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppPalette.black)),
                  Text('Last Updated 23hr ago',
                      style: GoogleFonts.sen(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: AppPalette.black)),
                ],
              )
            ],
          ),
          Text('\$500',
              style: GoogleFonts.sen(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppPalette.black)),
        ],
      ),
    );
  }
}
