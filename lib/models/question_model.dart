import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Question {
  int id;
  String? title;
  String? youtube_id_result;
  String question;
  String answer;
  Question({
    required this.id,
    required this.title,
    required this.answer,
    required this.question,
    required this.youtube_id_result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'answer': answer,
      'question': question,
      'youtube_id_result': youtube_id_result,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'] as int,
      title: map['title'] != null
      ?  map['title'] as String
      : 'Sau khi thực hiện đoạn mã kết quả sẽ là gì? ',
      answer: map['answer'] as String,
      question: map['question'] as String,
      youtube_id_result: map['youtube_id_result'] != null
          ?  map['youtube_id_result'] as String
      : null ,
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source) as Map<String, dynamic>);
}
