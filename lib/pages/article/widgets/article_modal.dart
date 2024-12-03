import 'package:flutter/material.dart';
import 'package:quiz_game/apps/utils/const.dart';
import 'package:quiz_game/models/question_model.dart';
import 'package:quiz_game/pages/article/widgets/article_youtube.dart';

Future<void> showModal(context, String valueInput, Question data) =>
    showModalBottomSheet(
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
                    (valueInput == data.answer)
                        ? successAnswer(valueInput)
                        : errorAnswer(valueInput, data.answer),
                    SizedBox(
                      height: getHeight(context) * 0.02,
                    ),
                    data.youtube_id_result!.isNotEmpty ||
                            data.youtube_id_result == null
                        ? RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(text: 'Ban xem them video giai dap')
                                ]),
                          )
                        : const SizedBox(),
                    SizedBox(
                      height: getHeight(context) * 0.02,
                    ),
                    data.youtube_id_result!.isNotEmpty ||
                            data.youtube_id_result == null
                        ? Expanded(
                            child: ArticleYoutube(id: data.youtube_id_result))
                        : const SizedBox(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

RichText successAnswer(String valueInput) {
  return RichText(
      text: TextSpan(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          children: [
        const TextSpan(text: 'Đáp án '),
        TextSpan(
            text: valueInput,
            style: const TextStyle(
              color: Colors.green,
              fontSize: 22,
            )),
        const TextSpan(text: ' của bạn là chính xác!'),
      ]));
}

RichText errorAnswer(String valueInput, answer) {
  return RichText(
      text: TextSpan(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          children: [
        const TextSpan(text: 'Đáp án '),
        TextSpan(
            text: valueInput,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 22,
            )),
        const TextSpan(text: ' chưa chính xác! Đáp án đúng là: '),
        TextSpan(
            text: answer.toString(),
            style: const TextStyle(
              color: Colors.green,
              fontSize: 22,
            )),
      ]));
}
