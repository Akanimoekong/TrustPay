import 'package:flutter/material.dart';

extension BuildContextWrapper on BuildContext {
  double get height {
    return MediaQuery.of(this).size.height;
  }

  double get width {
    return MediaQuery.of(this).size.width;
  }

  TextTheme get textTheme => Theme.of(this).textTheme;
}

void showAppBottomSheet({
  required BuildContext context,
  required Widget child,
  bool isDismissible = true,
  double heightPercent = 0.54,
}) {
  showModalBottomSheet(
    isDismissible: isDismissible,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24.0),
    ),
    backgroundColor: Colors.white,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        width: double.infinity,
        height: context.height * heightPercent,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            color: Colors.white),
        child: child,
      );
    },
  );
}
