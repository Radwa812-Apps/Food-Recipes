import 'package:flutter/cupertino.dart';

import '../../../data/manager/food/food.dart';
import 'similar_food_item_w.dart';

class SimilarFoodItemListW extends StatelessWidget {
  const SimilarFoodItemListW({
    Key? key, required this.foods,
  }) : super(key: key);
 final List<Food> foods;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return SimilarFoodItemW(food: foods[index],);
        },
      ),
    );
  }
}
