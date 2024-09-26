import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator/feature/home/data/cubit/similar_food_cubit/similar_food_recipes_cubit.dart';
import 'package:quote_generator/feature/home/data/manager/food/food.dart';

import '../food_details_view.dart';
import 'food_item_w.dart';

class FoodItemListW extends StatelessWidget {
  const FoodItemListW({
    Key? key,
    required this.recipes,
  }) : super(key: key);
  final List<Food> recipes;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodItemW(
            food: recipes[index],
            ratio: 2 / 2,
            ontap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) {
                    BlocProvider.of<SimilarFoodRecipesCubit>(context)
                        .getSimilarFoodCubit(id: recipes[index].id!);
                    return FoodDetailsView(food: recipes[index]);
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
