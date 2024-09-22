import 'package:flutter/material.dart';
import 'package:quote_generator/feature/home/presentation/views/home_view.dart';

void main() {
  runApp(const FoodRecipes());
}

class FoodRecipes extends StatelessWidget {
  const FoodRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.purple, fontFamily: 'Protest Riot'),
      home: const HomeView(),
    );
  }
}
