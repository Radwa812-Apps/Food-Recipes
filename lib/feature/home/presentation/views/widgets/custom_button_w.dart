import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customButtonW extends StatelessWidget {
  const customButtonW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white, // White background
        minimumSize: const Size(150, 50), // Width and height of the button
        padding: const EdgeInsets.symmetric(
            horizontal: 16, vertical: 8), // Optional: Padding inside the button
      ),
      onPressed: () {},
      child: const Text(
        'See More',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Roboto',
          fontSize: 20,
        ),
      ),
    );
  }
}
