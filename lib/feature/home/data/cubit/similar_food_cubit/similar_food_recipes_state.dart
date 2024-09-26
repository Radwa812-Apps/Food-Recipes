part of 'similar_food_recipes_cubit.dart';

 class SimilarFoodRecipesState extends Equatable {
  const SimilarFoodRecipesState();

  @override
  List<Object> get props => [];
}

 class SimilarFoodRecipesInitial extends SimilarFoodRecipesState {}
 class SimilarFoodRecipesSuccess extends SimilarFoodRecipesState {
  final List<Food> food;

  const SimilarFoodRecipesSuccess({required this.food});
 }
 class SimilarFoodRecipesLoading extends SimilarFoodRecipesState {}
 class SimilarFoodRecipesFailure extends SimilarFoodRecipesState {
  final String error;

  const SimilarFoodRecipesFailure({required this.error});
 }
