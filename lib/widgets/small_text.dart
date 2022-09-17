import 'package:ecommerce_flutter/utils/dimenstion.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  double height;
  SmallText(
      {Key? key,
      this.color = const Color(0xff89dad0),
      required this.text,
      this.height = 1.2,
      this.size = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: Dimensions.font12,
          color: color,
          fontWeight: FontWeight.w400,
          height: height),
    );
  }
}
