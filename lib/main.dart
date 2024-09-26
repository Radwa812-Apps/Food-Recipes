
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator/feature/home/data/cubit/similar_food_cubit/similar_food_recipes_cubit.dart';
import 'package:quote_generator/feature/home/data/services/get_food_items.dart';
import 'package:quote_generator/feature/home/presentation/views/home_view.dart';
import 'feature/home/data/cubit/get_food_recipes_cubit/get_food_recipes_cubit.dart';

void main() {
  runApp(const FoodRecipes());
}

class FoodRecipes extends StatelessWidget {
  const FoodRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              GetFoodRecipesCubit(Services(Dio()))..getFoodCubit(catigory: 'desserts'),
        ),
        BlocProvider(
          create: (context) => SimilarFoodRecipesCubit(Services(Dio())),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: 'Protest Riot',
        ),
        home: const HomeView(),
      ),
    );
  }
}
