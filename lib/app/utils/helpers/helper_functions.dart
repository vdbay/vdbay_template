import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import "package:pointycastle/export.dart";

enum VDBSnackBarType { success, error, warning, info }

class VDBHelperFunctions {
  static Color? getColor(String value) {
    /// Define your product specific colors here and it will match the attribute colors and show specific 🟠🟡🟢🔵🟣🟤

    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.deepOrange;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else {
      return null;
    }
  }

  static Future<void> showSnackbar(String title, String message,
      {required VDBSnackBarType vdbSnackBarType,
      SnackPosition position = SnackPosition.BOTTOM}) async {
    Get.isSnackbarOpen ? await Get.closeCurrentSnackbar() : null;
    Get.snackbar(
      title,
      message,
      snackPosition: position,
      backgroundColor: vdbSnackBarType == VDBSnackBarType.success
          ? Colors.green
          : vdbSnackBarType == VDBSnackBarType.error
              ? Colors.red
              : vdbSnackBarType == VDBSnackBarType.warning
                  ? Colors.orange
                  : Colors.blue,
      colorText: Colors.white,
      icon: Icon(
        vdbSnackBarType == VDBSnackBarType.success
            ? Icons.check_circle_outline
            : vdbSnackBarType == VDBSnackBarType.error
                ? Icons.error_outline
                : vdbSnackBarType == VDBSnackBarType.warning
                    ? Icons.warning_amber_outlined
                    : Icons.info_outline,
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(10),
      borderRadius: 10,
      duration: const Duration(seconds: 3),
      snackStyle: SnackStyle.FLOATING,
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }

  static String aesCbcEncryptString(String plaintext,
      {String key = '4512631236589784', String iv = '4512631236589784'}) {
    return base64Encode(aesCbcEncrypt(
        Uint8List.fromList(utf8.encode(key)),
        Uint8List.fromList(utf8.encode(iv)),
        Uint8List.fromList(utf8.encode(plaintext))));
  }

  static Uint8List aesCbcEncrypt(
      Uint8List key, Uint8List iv, Uint8List paddedPlaintext) {
    assert([128, 192, 256].contains(key.length * 8));
    assert(128 == iv.length * 8);
    var blockSize = 16;
    var paddingLength = blockSize - (paddedPlaintext.length % blockSize);
    var paddedPlaintextWithPadding =
        Uint8List(paddedPlaintext.length + paddingLength);
    paddedPlaintextWithPadding.setAll(0, paddedPlaintext);
    for (var i = paddedPlaintext.length;
        i < paddedPlaintextWithPadding.length;
        i++) {
      paddedPlaintextWithPadding[i] = paddingLength;
    }
    final cbc = CBCBlockCipher(AESEngine())
      ..init(true, ParametersWithIV(KeyParameter(key), iv));
    final cipherText = Uint8List(paddedPlaintextWithPadding.length);
    var offset = 0;
    while (offset < paddedPlaintextWithPadding.length) {
      offset += cbc.processBlock(
          paddedPlaintextWithPadding, offset, cipherText, offset);
    }
    assert(offset == paddedPlaintextWithPadding.length);
    return cipherText;
  }
}
