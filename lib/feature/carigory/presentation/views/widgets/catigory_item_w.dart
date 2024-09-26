import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator/feature/home/data/cubit/get_food_recipes_cubit/get_food_recipes_cubit.dart';
import 'package:quote_generator/feature/carigory/presentation/views/catigory_body_view.dart';

class CatigoryItemW extends StatelessWidget {
  const CatigoryItemW({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        BlocProvider.of<GetFoodRecipesCubit>(context)
            .getFoodCubit(catigory: name);
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return CatigoryBodyView();
        })));
      }),
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
              color: const Color.fromARGB(97, 194, 189, 189)),
          child: Icon(
            icon,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
