import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator/feature/home/data/cubit/similar_food_cubit/similar_food_recipes_cubit.dart';

import 'similar_food_item_list_w.dart';

class DetailsSimilarRecipesW extends StatelessWidget {
  const DetailsSimilarRecipesW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, top: 30),
          child: Text(
            'Simiral Recipes',
            style: TextStyle(
              color: Colors.white, // Text color
              fontSize: 20,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        BlocBuilder<SimilarFoodRecipesCubit, SimilarFoodRecipesState>(
          builder: (context, state) {
            if (state is SimilarFoodRecipesSuccess)
              return SimilarFoodItemListW(foods: state.food);
            else if (state is SimilarFoodRecipesFailure) {
              return Text('Error ${state.error}');
            } else {
              return Center(child: const CircularProgressIndicator());
            }
          },
        ),
      ],
    );
  }
}
