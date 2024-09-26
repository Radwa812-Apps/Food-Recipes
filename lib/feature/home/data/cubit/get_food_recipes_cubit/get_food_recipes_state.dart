part of 'get_food_recipes_cubit.dart';

@immutable
class GetFoodRecipesState {}

class GetFoodRecipesInitial extends GetFoodRecipesState {}

class GetFoodRecipesSuccess extends GetFoodRecipesState {
  final List<Food> food;

  GetFoodRecipesSuccess({required this.food});
}

class GetFoodRecipesLoading extends GetFoodRecipesState {}

class GetFoodRecipesFailure extends GetFoodRecipesState {
  final String error;

  GetFoodRecipesFailure({required this.error});

}
