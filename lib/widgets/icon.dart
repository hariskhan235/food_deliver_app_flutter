import 'package:ecommerce_flutter/utils/dimenstion.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData iconData;
  final Color backgroundColor;
  final Color iconColor;
  final double size;

  const AppIcon(
      {Key? key,
      required this.iconData,
      this.backgroundColor = const Color(0x0fffc4e4),
      this.iconColor = const Color(0xff756d54),
      this.size = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: Colors.white.withOpacity(0.9),
      ),
      child: Icon(
        iconData,
        color: iconColor,
        size: Dimensions.iconSize16,
      ),
    );
  }
}
