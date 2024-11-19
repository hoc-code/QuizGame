import 'package:flutter/material.dart';
import 'package:quiz_game/apps/utils/const.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Let\'s play QuizGame",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: getHeight(context) * 0.02,
        ),
        const Text("Bộ câu hỏi trắc nghiệm lập trình tại LongDev"),
        SizedBox(height: getHeight(context) * 0.06),
      ],
    );
  }
}
