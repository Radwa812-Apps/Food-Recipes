import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator/feature/home/data/cubit/get_food_recipes_cubit/get_food_recipes_cubit.dart';
import 'package:quote_generator/feature/home/presentation/views/widgets/food_item_listview_w.dart';

class CatigoryBodyView extends StatelessWidget {
  const CatigoryBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFoodRecipesCubit, GetFoodRecipesState>(
      builder: (context, state) {
        if (state is GetFoodRecipesSuccess) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children:  [
                    FoodItemListW(
                      recipes: state.food,
                    ),
                  ],
                ),
              ),
            ),
          );
        } else if (state is GetFoodRecipesFailure) {
          return Text('Error :${state.error}');
        } else {
         return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
