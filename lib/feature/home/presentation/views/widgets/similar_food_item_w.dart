import 'package:flutter/material.dart';

import '../food_details_view.dart';
import 'food_item_image.dart';

class SimilarFoodItemW extends StatelessWidget {
  const SimilarFoodItemW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 4),
      child: GestureDetector(
        onTap: (() {
          Navigator.push(context, MaterialPageRoute(builder: ((context) {
            return FoodDetailsView();
          })));
        }),
        child: SizedBox(
          height: 150,
          width: 150,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9), color: Colors.white),
              child: Column(
                children: const [
                  Text(
                    'Desserts',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2, right: 2),
                    // child: FoodItemImageW(image: ,),
                  ),
                  Text(
                    '8 Persons',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
