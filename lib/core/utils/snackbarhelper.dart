import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart'; // your CustomText widget

class SnackBarHelper {
  static void show(
    BuildContext context, {
    required String message,
    Color backgroundColor = Colors.greenAccent,
    Color textColor = Colors.white,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        content: CustomText(text: message, color: textColor),
      ),
    );
  }
}
