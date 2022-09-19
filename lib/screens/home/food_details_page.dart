import 'package:ecommerce_flutter/utils/colors.dart';
import 'package:ecommerce_flutter/utils/dimenstion.dart';
import 'package:ecommerce_flutter/widgets/app_column.dart';
import 'package:ecommerce_flutter/widgets/big_text.dart';
import 'package:ecommerce_flutter/widgets/expandable_text_widget.dart';
import 'package:ecommerce_flutter/widgets/icon.dart';
import 'package:flutter/material.dart';

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/food_1.jpg',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(iconData: Icons.arrow_back_ios),
                AppIcon(iconData: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(
                    text: "Chinese Side",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: 'Introduce'),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              'This is not the way to think about writing an essay!400 words is only about a page and a half. It’s not very long. 400 divided by 5 is 80 words per paragraph. But the intro and conclusion might be shorter. Maybe 50 words each? That leaves 300 for the body, so 100 words each. But more important than “How many words and how many sentences should I write?” concentrate on what you want to say! This answer was 77 words before I added this sentence. See how short that is?This is not the way to think about writing an essay!400 words is only about a page and a half. It’s not very long. 400 divided by 5 is 80 words per paragraph. But the intro and conclusion might be shorter. Maybe 50 words each? That leaves 300 for the body, so 100 words each. But more important than “How many words and how many sentences should I write?” concentrate on what you want to say! This answer was 77 words before I added this sentence. See how short that is'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomNavHeight,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
              child: BigText(
                text: '\$10 | Add to cart',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
