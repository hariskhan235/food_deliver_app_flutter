import 'package:ecommerce_flutter/utils/colors.dart';
import 'package:ecommerce_flutter/utils/dimenstion.dart';
import 'package:ecommerce_flutter/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstText;
  late String secondText;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 4.02;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstText = widget.text.substring(0, textHeight.toInt());
      secondText =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstText = widget.text;
      secondText = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondText.isEmpty
          ? SmallText(
            height: 2.8,
              text: firstText,
              color: AppColors.textColor,
            )
          : Column(
              children: [
                SmallText(
                  size: Dimensions.font16,
                  text:
                      hiddenText ? ('$firstText...') : (firstText + secondText),
                  color: Colors.black,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        size: Dimensions.font16,
                        text: hiddenText ? 'Show more' : 'Show less',
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
