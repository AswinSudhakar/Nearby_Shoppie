import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final String? fontfamily;
  final Color? labelColor;
  final double? width;
  final double? height;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final EdgeInsets padding;
  final IconData? icon;

  const CustomElevatedButton({
    super.key,
    this.height,
    this.fontfamily,
    this.labelColor,
    this.width,
    required this.label,
    required this.onPressed,
    this.backgroundColor = Colors.orange,
    this.textColor = Colors.white,
    this.borderRadius = 12,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: icon == null
            ? Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: fontfamily,
                  color: labelColor,
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon),
                  const SizedBox(width: 8),
                  Text(
                    label,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: fontfamily,
                      color: labelColor,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
