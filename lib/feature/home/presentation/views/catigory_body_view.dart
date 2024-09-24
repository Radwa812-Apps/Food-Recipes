import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quote_generator/feature/home/presentation/views/widgets/food_item_listview_w.dart';

class CatigoryBodyView extends StatelessWidget {
  const CatigoryBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: const [
             // FoodItemListW(),
            ],
          ),
        ),
      ),
    );
  }
}
