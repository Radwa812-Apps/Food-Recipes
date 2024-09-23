import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchW extends StatelessWidget {
  const SearchW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search Your Quick Meals ...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
    );
  }
}
