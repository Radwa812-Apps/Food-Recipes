import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quote_generator/feature/home/data/services/get_food_items.dart';

import '../../manager/food/food.dart';

part 'similar_food_recipes_state.dart';

class SimilarFoodRecipesCubit extends Cubit<SimilarFoodRecipesState> {
  SimilarFoodRecipesCubit(this.services) : super(SimilarFoodRecipesInitial());
 final Services services;

  getSimilarFoodCubit({required int id}) async {
    emit(SimilarFoodRecipesLoading());
    try {
      List<Food> date = await services.getFoodItems(
          url:
              'https://tasty.p.rapidapi.com/recipes/list-similarities?recipe_id=$id');

      emit(SimilarFoodRecipesSuccess(food: date));
      print('success eeeeeeeeeeeeeeeeeee');
    } catch (e) {
      emit(SimilarFoodRecipesFailure(error: e.toString()));
    }
  }
}
