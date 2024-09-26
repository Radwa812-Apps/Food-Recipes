import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/manager/food/food.dart';
import 'food_item_image.dart';

class DetailsTitleW extends StatelessWidget {
  const DetailsTitleW({
    Key? key,
    required this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          food.name!,
          style: const TextStyle(fontSize: 25, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        ),
        FoodItemImageW(
          image: food.thumbnailUrl!,
        ),
      ]),
    );
  }
}
