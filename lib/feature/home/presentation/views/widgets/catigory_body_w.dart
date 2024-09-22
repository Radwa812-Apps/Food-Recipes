import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'catigory_item_w.dart';

class CatigoryBodyW extends StatelessWidget {
  const CatigoryBodyW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CatigoryItemW(name: 'Fruits', icon: Icons.apple),
        CatigoryItemW(name: 'Grains', icon: Icons.grain),
        CatigoryItemW(name: 'Dairy', icon: Icons.icecream),
        CatigoryItemW(name: 'Beverages', icon: Icons.local_drink),
        CatigoryItemW(name: 'Desserts', icon: Icons.cake),
        CatigoryItemW(name: 'Solid Fats', icon: Icons.kitchen),
        CatigoryItemW(name: 'Protein Foods', icon: Icons.fastfood),
      ],
    );
  }
}
