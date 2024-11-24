import 'package:flutter/material.dart';
import 'package:quiz_game/apps/utils/const.dart';
import 'package:quiz_game/widgets/Backgroud_custom.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroudCustom(),
          SafeArea(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: paddingCustom(context)),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 1,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.primaries[index],
                  ),
                  child: Align(
                    child: Text('Items + $index'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
