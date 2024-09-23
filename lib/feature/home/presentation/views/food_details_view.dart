import 'package:flutter/material.dart';
import 'package:quote_generator/core/constant.dart';
import 'package:quote_generator/feature/home/presentation/views/widgets/food_item_image.dart';

import 'widgets/custom_button_w.dart';
import 'widgets/food_item_link.dart';
import 'widgets/item_details_info_w.dart';
import 'widgets/item_detals_des_w.dart';
import 'widgets/similar_food_item_list_w.dart';

class FoodDetailsView extends StatelessWidget {
  FoodDetailsView({super.key});

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
                  ]),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Container(
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
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customButtonW(
                            ontap: ((() {
                              
                            })),
                            tcolor: Colors.black,
                            color: Colors.white,
                            name: 'See More',
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12)),
                          ),
                          customButtonW(
                            ontap: (() {
                              showInstructionsDialog(
                                  context); // Show the dialog with instructions
                            }),
                            tcolor: Colors.white,
                            color: Colors.purple,
                            name: 'instructions',
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ItemDetailsInfoW(
                        title: '4 Likes',
                        icon: Icons.room_service,
                      ),
                      ItemDetailsInfoW(
                        title: '4 Likes',
                        icon: Icons.favorite,
                      ),
                      ItemDetailsInfoW(
                        title: '4 Likes',
                        icon: Icons.access_time_filled,
                      ),
                      HyperlinkButton()
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
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
                      SizedBox(
                        height: 10,
                      ),
                      SimilarFoodItemListW(),
                    ],
                  ),
                ),
              ]),
        ));
  }

  final List<String> instructions = [
    "Add the ground beef and onion to a large pot and stir until the beef is cooked through.",
    "Drain excess liquid.",
    "Add the kidney beans, black beans, corn, tomatoes, tomato sauce, and taco seasoning to the pot, and stir until combined.",
    "Cook over medium heat for 10 minutes.",
    "Serve with cheddar cheese, sour cream, pico de gallo, avocado, corn chips, lime wedges, and cilantro.",
    "Enjoy!"
  ];

  // Function to show the instructions in a dialog
  void showInstructionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Instructions'),
          content: SingleChildScrollView(
            child: ListBody(
              children:
                  instructions.map((instruction) => Text(instruction)).toList(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
