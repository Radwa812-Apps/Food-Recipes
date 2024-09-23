import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetailsDescriptionW extends StatelessWidget {
  const ItemDetailsDescriptionW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          'Descroption',
          style: TextStyle(fontSize: 24),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            'This quick and easy taco soup is made entirely in one pot in less than 30 minutes. Topped with cheese, avocado, and all the fixins, this simple soup makes the perfect weeknight dinner that\'ll please just about anyone.',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 109, 108, 108),
              fontFamily: 'Roboto',
            ),
          ),
        ));
  }
}
