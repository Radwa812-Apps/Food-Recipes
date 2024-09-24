import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:quote_generator/feature/home/data/manager/food/food.dart';

class Services {
  final Dio dio;

  Services(this.dio);

  Future<List<Food>> getFoodItems({required String url}) async {
   
    try {
      final options = Options(headers: {
      'X-RapidAPI-Key': 'e6792fd353mshea05cd60389da69p1f8cbfjsnb54462127095', 
      'X-RapidAPI-Host': 'tasty.p.rapidapi.com'
    });
       Response response = await dio.get(url,options: options);
      Map<String, dynamic> data = response.data;

      List<Food> recipes = [];
      for (var element in data['results']) {
        recipes.add(Food.fromJson(element));
      }
      return recipes;
    } catch (e) {
      throw Exception('there was an error : ${e.toString()}');
    }
  }
}
