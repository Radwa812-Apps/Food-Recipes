import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/functions.dart';
import '../../../data/manager/food/food.dart';
import 'item_details_info_w.dart';

class DetailsUserReviewW extends StatelessWidget {
  const DetailsUserReviewW({
    Key? key,
    required this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemDetailsInfoW(
          title: '${food.numServings} Servings',
          icon: Icons.room_service,
        ),
        ItemDetailsInfoW(
          title: formatNumber(food.userRatings!.countPositive!),
          icon: Icons.favorite,
        ),
        ItemDetailsInfoW(
          title: '${food.totalTimeMinutes} Min',
          icon: Icons.access_time_filled,
        ),
      ],
    );
  }
}
