import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customButtonW extends StatelessWidget {
  const customButtonW({
    Key? key,
    required this.name,
    required this.borderRadius,
    required this.color,
    required this.tcolor,
  }) : super(key: key);

  final String name;
  final BorderRadius borderRadius;
  final Color color;
  final Color tcolor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color, // White background
        minimumSize: const Size(150, 50),
        shape: RoundedRectangleBorder(
            borderRadius: borderRadius // Set the border radius
            ),
        padding: const EdgeInsets.symmetric(
            horizontal: 16, vertical: 8), // Optional: Padding inside the button
      ),
      onPressed: () {},
      child: Text(
        name,
        style: TextStyle(
          color: tcolor,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
