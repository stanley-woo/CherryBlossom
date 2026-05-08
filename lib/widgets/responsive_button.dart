import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {

  final bool? isResponsive;
  final double? width;

  const ResponsiveButton({super.key, this.width = 120, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
    return isResponsive == true ? Flexible(
      child: Container(
        width: double.maxFinite,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor, 
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(margin: const EdgeInsets.only(left: 20), child: AppText(text: "Book Trip Now", color: Colors.white)),
            Image.asset("img/button-one.png"),
          ],
        ),
      ),
    ) : Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor, 
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("img/button-one.png"),
        ],
      ),
    );
  }
}