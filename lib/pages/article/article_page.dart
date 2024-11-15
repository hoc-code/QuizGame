import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArticlePage'),
      ),
      body: const Center(
        child: Text(
          'This is the Article Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
