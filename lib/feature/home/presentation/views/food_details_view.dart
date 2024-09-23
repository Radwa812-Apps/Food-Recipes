import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quote_generator/core/constant.dart';
import 'package:quote_generator/feature/home/presentation/views/widgets/food_item_image.dart';
import 'package:quote_generator/feature/home/presentation/views/widgets/food_item_w.dart';

import 'widgets/custom_button_w.dart';
import 'widgets/item_detals_des_w.dart';
import 'widgets/similar_food_item_list_w.dart';
import 'widgets/similar_food_item_w.dart';

class FoodDetailsView extends StatelessWidget {
  const FoodDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Details',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Column(children: const [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Soups For Every Occasion',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FoodItemImageW(),
                    SizedBox(
                      height: 20,
                    ),
                    customButtonW(),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Simiral Recipes',
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ]),
                ),
                const SliverToBoxAdapter(
                  child: SimilarFoodItemListW(),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        9,
                      ),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ItemDetailsDescriptionW(),
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: Column(children: [],),)
              ]),
        ));
  }
}
