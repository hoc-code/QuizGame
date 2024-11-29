import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/a11y-dark.dart';
import 'package:quiz_game/apps/utils/const.dart';
import 'package:quiz_game/apps/utils/parse_html.dart';
import 'package:quiz_game/widgets/button_custom.dart';

import 'article_modal.dart';

class ArticleBoxContent extends StatefulWidget {
  const ArticleBoxContent({super.key});

  @override
  State<ArticleBoxContent> createState() => _ArticleBoxContentState();
}

class _ArticleBoxContentState extends State<ArticleBoxContent> {
  final PageController pageController = PageController();

  void handleSubmit() async {
    await showModal(context);
  }

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      itemCount: 4,
      itemBuilder: (BuildContext context, int) {
        return Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 40.0,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const Text(
                'Đọc và trả lời câu hỏi:',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: getHeight(context) * 0.02),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  color: Color(0xff333333),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                width: getWidth(context),
                child: HighlightView(
                  parseHtmlString(
                      '<p> printf ( 03 + 24, "LongPeDev" , 33, "Training"; </p>'),
                  theme: a11yDarkTheme,
                  language: 'dart',
                  padding: const EdgeInsets.all(12),
                ),
              ),
              SizedBox(height: getHeight(context) * 0.02),
              const Text(
                'Đáp án của bạn là:',
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(height: getHeight(context) * 0.02),
              TextFormField(
                onChanged: (_) {},
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (value) {},
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'Nhập đáp án của bạn tại đây'),
              ),
              SizedBox(height: getHeight(context) * 0.02),
              ButtonCustom(onTap: handleSubmit, title: "Xem kết quả"),
            ],
          ),
        );
      },
    );
  }
}
