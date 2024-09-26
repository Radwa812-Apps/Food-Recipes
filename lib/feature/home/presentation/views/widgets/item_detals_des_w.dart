import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetailsDescriptionW extends StatelessWidget {
  const ItemDetailsDescriptionW({
    Key? key,
    required this.desc,
  }) : super(key: key);
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Let the width fill the available space
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            'Description',
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              desc, // This is the variable that holds your description text
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 109, 108, 108),
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
