import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetailsInfoW extends StatelessWidget {
  const ItemDetailsInfoW({
    Key? key, required this.title, required this.icon,
  }) : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color:Colors.white,
      ),
      title: Text(
       title,
        style: const TextStyle(color: Colors.white, fontSize: 21),
      ),
    );
  }
}
