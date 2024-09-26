import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatigoryIcon extends StatelessWidget {
  const CatigoryIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: ((context) {
      return IconButton(
        onPressed: (() {
          Scaffold.of(context).openDrawer();
        }),
        icon: const Icon(
          Icons.grid_view_rounded,
          color: Colors.black,
        ),
      );
    }));
  }
}
