import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quote_generator/core/constant.dart';
import 'package:quote_generator/feature/home/presentation/views/widgets/food_item_image.dart';
import 'package:quote_generator/feature/home/presentation/views/widgets/food_item_w.dart';

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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
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
                FoodItemImageW()
          
              ],
              
            ),
          ),
        ));
  }
}
