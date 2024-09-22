import 'package:flutter/material.dart';

class CatigoryItemW extends StatelessWidget {
  const CatigoryItemW({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: (() {}),
        icon: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
              color: const Color.fromARGB(97, 194, 189, 189)),
          child: Icon(
            icon,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      ),
    );
  }
}
