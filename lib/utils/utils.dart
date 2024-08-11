import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';

import 'package:timeago/timeago.dart' as timeago;
import 'package:toastification/toastification.dart';
import 'package:trustpay/core/theme/new_theme/app_color.dart';

typesEqual<T, R>() => T == R;

void successSnackBar({String? title = 'Success', String? message}) {
  Future.delayed(const Duration(milliseconds: 10), () async {
    while (Get.isSnackbarOpen) {
      await Get.closeCurrentSnackbar();
    }
    try {
      Get.showSnackbar(
        GetSnackBar(
          title: title,
          message: message,
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          borderRadius: 8,
          dismissDirection: DismissDirection.startToEnd,
          duration: const Duration(seconds: 5),
        ),
      );
    } catch (e) {
      snackBar(
        Get.context!,
        title: title!,
        content: Text(
          message!,
          style: const TextStyle(fontSize: 14),
        ),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 5),
      );
    }
  });
}

void errorSnackBar(
    {String title = 'Error', String? message, bool showTitle = true}) {
  if (message?.startsWith('Exception: ') == true) {
    message = message?.replaceFirst("Exception: ", '');
  } else if (message
          ?.startsWith('DioError [DioErrorType.other]: SocketException: ') ==
      true) {
    message = "Please check your internet connection";
  } else if (message?.startsWith('[firebase_messaging/unknown] ') == true) {
    message = message?.replaceFirst("[firebase_messaging/unknown] ", '');
  }
  Future.delayed(const Duration(milliseconds: 10), () async {
    while (Get.isSnackbarOpen) {
      await Get.closeCurrentSnackbar();
    }
    try {
      Get.showSnackbar(
        GetSnackBar(
          title: showTitle ? title : null,
          message: message,
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          margin:
              showTitle ? const EdgeInsets.all(20) : const EdgeInsets.all(5),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          borderRadius: 8,
          dismissDirection: DismissDirection.startToEnd,
          duration: const Duration(seconds: 5),
        ),
      );
    } catch (e) {
      snackBar(
        Get.context!,
        title: showTitle ? title : '',
        content: Text(
          message!,
          style: const TextStyle(fontSize: 14),
        ),
        backgroundColor: Colors.redAccent,
        duration: const Duration(seconds: 5),
      );
    }

    debugPrint(message);
  });
}

/* void showLoader({String message = 'Please wait ...'}) {
  Future.delayed(Duration.zero, () async {
    while (Get.isSnackbarOpen) {
      await Get.closeCurrentSnackbar();
    }

    try {
      await Get.dialog(
        AlertDialog(
          content: Row(children: [
            const CircularProgressIndicator(),
            const SizedBox(
              width: 16,
            ),
            Text(
              message,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            )
          ]),
        ),
        barrierDismissible: false,
      );
    } catch (e) {
      // showLoaderNew(Get.context!);
    }
  });
}

void hideLoader() {
  Future.delayed(Duration.zero, () async {
    while (Get.isSnackbarOpen) {
      await Get.closeCurrentSnackbar();
    }
    try {
      if (Get.isDialogOpen == true) Get.back();
    } catch (e) {
      //  hideLoaderNew();
    }
  });
}
 */
String formatDateTime({
  required String dateTime,
  format = "dd MMM, yyyy 'at' HH:mm",
}) {
  final localDateTime = toDate(dateTime: dateTime);
  return DateFormat(format).format(localDateTime);
}

String formatDate({
  required String dateTime,
  format = "dd MMM, yyyy",
}) {
  final localDateTime = toDate(dateTime: dateTime);
  return DateFormat(format).format(localDateTime);
}

DateTime toDate({required String dateTime}) {
  final utcDateTime = DateTime.parse(dateTime);
  return utcDateTime.toLocal();
}

String currencyNaire(BuildContext context) {
  var format =
      NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
  return format.currencySymbol;
}

String formatMoney(double amount) {
  final oCcy = NumberFormat("#,##0.00", "en_US");
  return oCcy.format(amount);
}

String getTimeAgo({required String dateTime}) {
  final localDateTime = toDate(dateTime: dateTime);
  return timeAgo(dateTime: localDateTime);
}

String timeAgo({required DateTime dateTime}) {
  final timeAgo = timeago.format(dateTime);
  return timeAgo;
}

Widget NaireText(BuildContext context,
    {Color? textColor, double? size, FontWeight? weight}) {
  return Text(currencyNaire(context),
      style: GoogleFonts.alatsi(
          fontWeight: weight ?? FontWeight.w700,
          color: textColor ?? AppPalette.white,
          fontSize: size ?? 24));
}

void newErrorSnack(BuildContext context, String message) {
  toastification.show(
      context: context,
      title: "Error",
      description: message,
      backgroundColor: const Color(0xffde2a43),
      showProgressBar: false,
      primaryColor: Colors.white,
      foregroundColor: Colors.white,
      autoCloseDuration: const Duration(seconds: 3));
}

void newSuccessSnack(BuildContext context, String message) {
  toastification.show(
      context: context,
      title: "Successful",
      description: message,
      backgroundColor: Color.fromARGB(255, 52, 133, 56),
      showProgressBar: false,
      primaryColor: Colors.white,
      foregroundColor: Colors.white,
      autoCloseDuration: const Duration(seconds: 3));
}
