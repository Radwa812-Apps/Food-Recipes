import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator/feature/home/data/cubit/get_food_recipes_cubit/get_food_recipes_cubit.dart';

class SearchW extends StatefulWidget {
  const SearchW({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchW> createState() => _SearchWState();
}

class _SearchWState extends State<SearchW> {
  String catigory = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        catigory = value;
      },
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: (() {
            BlocProvider.of<GetFoodRecipesCubit>(context)
                .getFoodCubit(catigory: catigory);
          }),
          icon: const Icon(Icons.search),
        ),
        hintText: 'Search Your Quick Meals ...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
    );
  }
}
