import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedTextW extends StatefulWidget {
  @override
  _AnimatedTextWState createState() => _AnimatedTextWState();
}

class _AnimatedTextWState extends State<AnimatedTextW> {


  @override
  Widget build(BuildContext context) {
    return const Text(
      'Farro and Leek Soup',
      style: TextStyle(fontSize: 23, color: Colors.white),
    );
  }
}
