import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quote_generator/feature/home/data/manager/food/food.dart';
import 'package:quote_generator/feature/home/data/manager/food/instruction.dart';
import 'package:quote_generator/feature/home/data/services/get_food_items.dart';

part 'get_food_recipes_state.dart';

class GetFoodRecipesCubit extends Cubit<GetFoodRecipesState> {
  GetFoodRecipesCubit(this.services) : super(GetFoodRecipesInitial());

  final Services services;
  String baseurl = 'https://tasty.p.rapidapi.com/recipes';
  getFoodCubit({required String catigory}) async {
    emit(GetFoodRecipesLoading());
    try {
      List<Food> date = await services.getFoodItems(
          url: '$baseurl/list?from=0&size=20&tags=under_30_minutes&q=$catigory');

      emit(GetFoodRecipesSuccess(food: date));
      print('success eeeeeeeeeeeeeeeeeee');
    } catch (e) {
      emit(GetFoodRecipesFailure(error: e.toString()));
    }
  }

  
}
