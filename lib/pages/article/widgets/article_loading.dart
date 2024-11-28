import 'package:flutter/material.dart';
import 'package:quiz_game/apps/utils/const.dart';

class ArticeLoading extends StatelessWidget {
  const ArticeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              Container(
                width: getWidth(context) * 20 / 100,
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
            text: const TextSpan(children: [
          TextSpan(text: 'Question  '),
          TextSpan(text: '1'),
          TextSpan(text: '/'),
          TextSpan(text: '2'),
        ]))
      ],
    );
  }
}
