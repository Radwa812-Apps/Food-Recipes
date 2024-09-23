import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodItemIconW extends StatelessWidget {
  const FoodItemIconW({
    Key? key,
    required this.icon,
    required this.info,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final String info;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: (() {}),
          icon: Icon(
            icon,
            size: 28,
            color: color,
          ),
        ),
        Text(
          info,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
