import 'package:ecommerce_flutter/utils/colors.dart';
import 'package:ecommerce_flutter/utils/dimenstion.dart';
import 'package:ecommerce_flutter/widgets/big_text.dart';
import 'package:ecommerce_flutter/widgets/expandable_text_widget.dart';
import 'package:ecommerce_flutter/widgets/icon.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetailsScreen extends StatelessWidget {
  const RecommendedFoodDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(iconData: Icons.clear),
                AppIcon(iconData: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
                child: Center(
                  child: BigText(
                    text: 'Chinese Side',
                    size: Dimensions.font26,
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.yellow,
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/food_1.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width10, right: Dimensions.width10),
                decoration: const BoxDecoration(),
                child: const ExpandableTextWidget(
                    text:
                        'This is not the way to think about writing an essay!400 words is only about a page and a half. It’s not very long. 400 divided by 5 is 80 words per paragraph. But the intro and conclusion might be shorter. Maybe 50 words each? That leaves 300 for the body, so 100 words each. But more important than “How many words and how many sentences should I write?” concentrate on what you want to say! This answer was 77 words before I added this sentence. See how short that is?This is not the way to think about writing an essay!400 words is only about a page and a half. It’s not very long. 400 divided by 5 is 80 words per paragraph. But the intro and conclusion might be shorter. Maybe 50 words each? That leaves 300 for the body, so 100 words each. But more important than “How many words and how many sentences should I write?” concentrate on what you want to say! This answer was 77 words before I added this sentence. See how short that is This is not the way to think about writing an essay!400 words is only about a page and a half. It’s not very long. 400 divided by 5 is 80 words per paragraph. But the intro and conclusion might be shorter. Maybe 50 words each? That leaves 300 for the body, so 100 words each. But more important than “How many words and how many sentences should I write?” concentrate on what you want to say! This answer was 77 words before I added this sentence. See how short that is?This is not the way to think about writing an essay!400 words is only about a page and a half. It’s not very long. 400 divided by 5 is 80 words per paragraph. But the intro and conclusion might be shorter. Maybe 50 words each? That leaves 300 for the body, so 100 words each. But more important than “How many words and how many sentences should I write?” concentrate on what you want to say! This answer was 77 words before I added this sentence. See how short that is'),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: Dimensions.height10,
                bottom: Dimensions.height10,
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconData: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                ),
                BigText(
                  text: '\$12.88' ' X ' '0',
                  color: AppColors.mainBlackColor,
                ),
                AppIcon(
                  iconData: Icons.add,
                  backgroundColor: AppColors.mainColor,
                ),
              ],
            ),
          ),
          Container(
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
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.signColor,
                    ),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
