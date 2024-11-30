import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game/apps/utils/const.dart';
import 'package:quiz_game/providers/question_provider.dart';

class ArticeLoading extends StatelessWidget {
  const ArticeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionProvider>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            width: getWidth(context),
            height: getHeight(context) * 0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                )),
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(microseconds: 200),
                  width: getWidth(context) * value.currentData / value.listData.length,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: const LinearGradient(colors: [
                        Color(0xff44A3AE),
                        Color(0xff33FBC9),
                      ])),
                ),
                const Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Loading..."),
                        Icon(
                          Icons.timelapse,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getWidth(context) * 0.04,
          ),
          RichText(
              text: TextSpan(children: [
                const TextSpan(text: 'Question  '),
                TextSpan(text: value.currentData.toString()),
                const TextSpan(text: '/'),
                TextSpan(text: value.listData.length.toString()),
              ]))
        ],
      ),
    );
  }
}
