import 'package:flutter/material.dart';
import 'package:quote_generator/feature/home/presentation/views/widgets/catigory_icon_w.dart';
import 'package:quote_generator/feature/home/presentation/views/widgets/catigory_w.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CatigoryWidget(),
      appBar: AppBar(
        leading: const CatigoryIcon(),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Food Recipes',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
