import 'package:flutter/material.dart';

class BackgroudCustom extends StatelessWidget {
  const BackgroudCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        'assets/images/background.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
