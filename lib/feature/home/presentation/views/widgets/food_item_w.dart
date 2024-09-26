import 'package:flutter/material.dart';
import 'package:quote_generator/core/constant.dart';
import 'package:quote_generator/feature/home/data/manager/food/food.dart';

import '../../../../../core/functions.dart';
import 'animated_textExample_w.dart';
import 'food_item__icons_w.dart';
import 'food_item_image.dart';

class FoodItemW extends StatelessWidget {
  const FoodItemW({
    Key? key,
    required this.ontap,
    required this.ratio,
    required this.food,
  }) : super(key: key);
  final Function() ontap;
  final double ratio;

  final Food food;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: ontap,
        child: AspectRatio(
          aspectRatio: ratio,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    offset: const Offset(4, 4),
                    blurRadius: 8),
              ],
              borderRadius: BorderRadius.circular(9),
              color: backgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.name!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 23, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FoodItemImageW(
                    image: food.thumbnailUrl!,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FoodItemIconW(
                        color: const Color.fromARGB(255, 174, 232, 109),
                        info: '${food.numServings} Servings',
                        icon: Icons.room_service,
                      ),
                      FoodItemIconW(
                        color: const Color.fromARGB(255, 182, 60, 52),
                        info:
                            formatNumber(food.userRatings!.countPositive!),
                        icon: Icons.favorite_border,
                      ),
                      FoodItemIconW(
                        color: const Color.fromARGB(255, 48, 66, 76),
                        info: '${food.totalTimeMinutes} Min',
                        icon: Icons.access_time_filled,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  
}
