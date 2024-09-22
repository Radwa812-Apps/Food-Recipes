import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(
            Icons.grid_view_rounded,
            color: Colors.black,
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Food Recipes',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
    );
  }
}
