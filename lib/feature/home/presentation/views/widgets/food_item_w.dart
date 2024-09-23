import 'package:flutter/material.dart';
import 'package:quote_generator/core/constant.dart';

import 'animated_textExample_w.dart';
import 'food_item__icons_w.dart';
import 'food_item_image.dart';

class FoodItemW extends StatelessWidget {
  const FoodItemW({
    Key? key,
    required this.ontap,
    required this.ratio,
  }) : super(key: key);
  final Function() ontap;
  final double ratio;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
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
                  AnimatedTextW(),
                  const SizedBox(
                    height: 20,
                  ),
                  const FoodItemImageW(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      FoodItemIconW(
                        color: Color.fromARGB(255, 174, 232, 109),
                        info: '4 Servings',
                        icon: Icons.room_service,
                      ),
                      FoodItemIconW(
                        color: Color.fromARGB(255, 182, 60, 52),
                        info: '8 Likes',
                        icon: Icons.favorite_border,
                      ),
                      FoodItemIconW(
                        color: Color.fromARGB(255, 48, 66, 76),
                        info: '45 Min',
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
