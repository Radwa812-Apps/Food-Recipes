import 'package:flutter/material.dart';

import 'catigory_body_w.dart';

class CatigoryWidget extends StatelessWidget {
  const CatigoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(15.0),
        bottomRight: Radius.circular(15.0),
      ),
      child: Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 100, left: 60),
          child: CatigoryBodyW(),
        ),
      ),
    );
  }
}
