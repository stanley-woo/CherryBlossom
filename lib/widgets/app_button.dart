import 'package:flutter/material.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final double size;
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  final String? text;
  final IconData? icon;
  bool? isIcon;

  AppButton({
    super.key,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    this.text = "Julie",
    this.icon,
    this.isIcon = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon == false ? Center(child: AppText(text: text!, color: color)) : Center(child: Icon(icon, color: color)),
    );
  }
}