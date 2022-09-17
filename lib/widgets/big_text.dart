import 'package:ecommerce_flutter/utils/dimenstion.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  final Color color;
  final String text;
  final TextOverflow overflow;
  double size;
  BigText(
      {Key? key,
      this.color = const Color(0xff332d2b),
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.size = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
          fontSize: Dimensions.font20,
          color: color,
          fontWeight: FontWeight.w400),
    );
  }
}
