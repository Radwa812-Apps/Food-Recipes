import 'package:flutter/cupertino.dart';

import 'similar_food_item_w.dart';

class SimilarFoodItemListW extends StatelessWidget {
  const SimilarFoodItemListW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const SimilarFoodItemW();
        },
      ),
    );
  }
}

