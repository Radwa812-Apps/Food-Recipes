import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator/core/constant.dart';
import 'package:quote_generator/feature/home/presentation/views/widgets/details_similar_recipes_w.dart';

import '../../../../core/URL_Lancher.dart';
import '../../../../core/functions.dart';
import '../../data/manager/food/food.dart';
import 'widgets/custom_button_w.dart';
import 'widgets/details_title_w.dart';
import 'widgets/details_user_reviews_w.dart';
import 'widgets/food_item_link.dart';
import 'widgets/item_details_info_w.dart';
import 'widgets/item_detals_des_w.dart';
import 'widgets/similar_food_item_list_w.dart';

class FoodDetailsView extends StatelessWidget {
  FoodDetailsView({super.key, required this.food});
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) {
                  return HyperlinkButton(
                    videoUrl: food.originalVideoUrl!,
                  );
                }),
              ),
            );
          }),
          child: const Icon(Icons.play_arrow_outlined),
        ),
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
                DetailsTitleW(food: food),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      ItemDetailsDescriptionW(
                        desc: food.description!,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customButtonW(
                            ontap: ((() {
                              launchCustomUrl(context, food.inspiredByUrl);
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
                              showInstructionsDialog(context,
                                  food.instructions!); // Show the dialog with instructions
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
                  child: DetailsUserReviewW(food: food),
                ),
                const SliverToBoxAdapter(
                  child: DetailsSimilarRecipesW(),
                ),
              ]),
        ));
  }

  // final List<String> instructions = [
  //   "Add the ground beef and onion to a large pot and stir until the beef is cooked through.",
  //   "Drain excess liquid.",
  //   "Add the kidney beans, black beans, corn, tomatoes, tomato sauce, and taco seasoning to the pot, and stir until combined.",
  //   "Cook over medium heat for 10 minutes.",
  //   "Serve with cheddar cheese, sour cream, pico de gallo, avocado, corn chips, lime wedges, and cilantro.",
  //   "Enjoy!"
  // ];

  // Function to show the instructions in a dialog
}
