import 'package:flutter/material.dart';

import '../../utils/ui_color.dart';

class UserTeamImage extends StatelessWidget {
  final Color? color;
  final String assetImagePath;
  const UserTeamImage({
    Key? key,
    this.color,
    this.assetImagePath = 'assets/images/',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      color: color ?? UiColors.color50pri,
      colorBlendMode: BlendMode.dstATop,
      image: AssetImage(assetImagePath),
      fit: BoxFit.fill,
    );
  }
}
