import 'package:flutter/material.dart';
import 'package:quote_generator/feature/home/data/manager/food/instruction.dart';

String formatNumber(int number) {
  if (number >= 1000 && number < 1000000) {
    return '${(number / 1000).toStringAsFixed(1)}K'; // For 1K to 999K
  } else if (number >= 1000000) {
    return '${(number / 1000000).toStringAsFixed(1)}M'; // For 1M and above
  } else {
    return number.toString(); // For less than 1K
  }
}

void showInstructionsDialog(
    BuildContext context, List<Instruction> instructions) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      List<String> inst = [];
      for (var element in instructions) {
        inst.add(element.displayText!);
      }
      return AlertDialog(
        title: const Text('Instructions'),
        content: SingleChildScrollView(
          child: ListBody(
            children: inst.asMap().entries.map((entry) {
              int index = entry.key + 1; // Add 1 to make it 1-based index
              String instruction = entry.value;
              return Text('$index. $instruction\n');
            }).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}
