import 'package:bellboy/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final Color iconColor;
  final Color containerColor;
   final VoidCallback? onTap;
  const CustomIcon({super.key, required this.iconColor, required this.containerColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
          backgroundColor: containerColor,
          radius: Dimensions.radius20 / 2.2,
          child: Icon(
            Icons.close_rounded,
            color: iconColor,
            size: Dimensions.iconSize16 / 1.2,
          )),
    );
  }
}
