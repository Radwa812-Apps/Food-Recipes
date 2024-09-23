import 'package:flutter/material.dart';

import '../food_details_view.dart';
import 'food_item_w.dart';

class FoodItemListW extends StatelessWidget {
  const FoodItemListW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          return FoodItemW(
            ratio: 2 / 2,
            ontap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) {
                    return  FoodDetailsView();
                  }),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
