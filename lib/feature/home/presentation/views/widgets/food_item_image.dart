import 'package:flutter/cupertino.dart';

class FoodItemImageW extends StatelessWidget {
  const FoodItemImageW({
    Key? key, required this.image,
  }) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1.3,
      child: Container(
        // height: MediaQuery.of(context).size.height * .3,
        // width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            image:  DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    image))),
      ),
    );
  }
}
