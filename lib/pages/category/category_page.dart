import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CategoryPage'),
      ),
      body: const Center(
        child: Text(
          'This is the Category Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
