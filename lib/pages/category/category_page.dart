import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_game/apps/routes/router_name.dart';
import 'package:quiz_game/apps/routes/routers.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CategoryPage'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            context.goNamed(RoutersName.articleName);
          },
          child: const Text('change page category'),
        ),
      ),
    );
  }
}
