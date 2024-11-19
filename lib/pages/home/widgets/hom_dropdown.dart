import 'package:flutter/material.dart';

class HomDropdown extends StatelessWidget {
  const HomDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      hint: const Text(
        'Chọn ngôn ngữ của bạn',
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
      style: const TextStyle(
        color: Colors.black,
      ),
      items: <String>['A', 'B', 'C', 'D'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }
}
