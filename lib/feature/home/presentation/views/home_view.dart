
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator/feature/home/data/services/get_food_items.dart';
import 'package:quote_generator/feature/home/presentation/views/widgets/catigory_icon_w.dart';
import 'package:quote_generator/feature/home/presentation/views/widgets/catigory_w.dart';

import '../../data/cubit/get_food_recipes_cubit/get_food_recipes_cubit.dart';
import 'widgets/food_item_listview_w.dart';
import 'widgets/search_w.dart';




// "original_video_url"


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CatigoryWidget(),
      appBar: AppBar(
        leading: const CatigoryIcon(),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Food Recipes',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 27),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SearchW(),
            BlocBuilder<GetFoodRecipesCubit, GetFoodRecipesState>(
              builder: (context, state) {
                if (state is GetFoodRecipesSuccess) {
                  return FoodItemListW(
                    recipes: state.food,
                  );
                } else if (state is GetFoodRecipesFailure) {
                  return Text('Error : ${state.error}');
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
