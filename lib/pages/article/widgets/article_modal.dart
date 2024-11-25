import 'package:flutter/material.dart';
import 'package:quiz_game/apps/utils/const.dart';
import 'package:quiz_game/pages/article/widgets/article_youtube.dart';

Future<void> showModal(context) => showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => FractionallySizedBox(
        heightFactor: 0.9,
        child: Container(
          width: getWidth(context),
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(text: 'Đáp án'),
                          TextSpan(
                              text: '4',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 22,
                              )),
                          TextSpan(text: ' cua ban la chua chinh xac'),
                          TextSpan(
                            text: '5',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getHeight(context) * 0.02,
                    ),
                    RichText(
                      text: const TextSpan(
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(text: 'Ban xem them video giai dap')
                          ]),
                    ),
                    SizedBox(
                      height: getHeight(context) * 0.02,
                    ),
                    Expanded(child: ArticleYoutube(id: 'WtLJlUdkWXI&list',) ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
