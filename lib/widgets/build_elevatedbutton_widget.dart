import 'package:flutter/material.dart';

class BuildElevatedButtonWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Widget? icon;

  const BuildElevatedButtonWidget({
    required this.text,
    required this.fontSize,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Adjusted radius for rounded corners
          side: BorderSide(color: Colors.grey.shade300), // Border for Google button style
        ),
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 27), // Adjusted padding
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            SizedBox(
              height: 24,
              width: 24,
              child: icon, // Set specific constraints for the icon size
            ),
            const SizedBox(width: 12), // Space between icon and text
          ],
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: foregroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
