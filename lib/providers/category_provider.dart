import 'package:flutter/cupertino.dart';
import 'package:quiz_game/models/category_model.dart';
import 'package:quiz_game/repositories/category_repo.dart';

class CategoryProvider extends ChangeNotifier {
    int? idLanguageChoose;
    List<Category> listLanguage = [];

    Future<void> getListLanguage() async {
        List<Category> data = await CategoryRepository().getLanguage();
        listLanguage = data;
        notifyListeners();
    }

    void setIdLanguageChoose(int id) {
        idLanguageChoose = id;
        notifyListeners();
    }

    // Future<List<Category>> getListTopic() async {
    //     List<Category> data =
    //     await CategoryRepository().getTopic(idLanguageChoose as int);
    //     return data;
    // }
}
