import 'package:flutter/cupertino.dart';

class FoodItemImageW extends StatelessWidget {
  const FoodItemImageW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1.3,
      child: Container(
        // height: MediaQuery.of(context).size.height * .3,
        // width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/side-view-shawarma-with-fried-potatoes-board-cookware_176474-3215.jpg?w=740&t=st=1727036685~exp=1727037285~hmac=04b932d025fa927747a8fdbd44dc5a39d20bbd72b34666855444cc24a35a62df'))),
      ),
    );
  }
}
