import 'package:flutter/cupertino.dart';
import 'package:quiz_game/models/question_model.dart';
import 'package:quiz_game/repositories/question_repo.dart';

class QuestionProvider extends ChangeNotifier {
  int currentData=1 ;
  List<Question> listData = [];


  void setCurrentData(int page) {
    currentData = page + 1 ;
    notifyListeners();
  }

  Future<List<Question>> getQuestionList(int idTopic) async {
    List<Question> data =
    await QuestionRepository().getQuestion(idTopic);
    listData = data;
    setCurrentData(0);
    return data;
  }
}
