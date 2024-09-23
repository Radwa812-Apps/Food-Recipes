import 'package:flutter/material.dart';

class RecipeInstructions extends StatelessWidget {
  final List<String> instructions = [
    "Add the ground beef and onion to a large pot and stir until the beef is cooked through.",
    "Drain excess liquid.",
    "Add the kidney beans, black beans, corn, tomatoes, tomato sauce, and taco seasoning to the pot, and stir until combined.",
    "Cook over medium heat for 10 minutes.",
    "Serve with cheddar cheese, sour cream, pico de gallo, avocado, corn chips, lime wedges, and cilantro.",
    "Enjoy!"
  ];

  // Function to show the instructions in a dialog
  void showInstructionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Instructions'),
          content: SingleChildScrollView(
            child: ListBody(
              children: instructions.map((instruction) => Text(instruction)).toList(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Instructions'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showInstructionsDialog(context); // Show the dialog with instructions
        },
        child: Text('Instructions'),
      ),
      body: Center(
        child: Text('Press the button to see the instructions'),
      ),
    );
  }
}
