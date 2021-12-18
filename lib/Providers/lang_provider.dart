import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/shared_preferences/shared_preferences_controller.dart';

class LangProvider extends ChangeNotifier {

  // String lang = SharedPreferencesController().checkLanguage;
  //
  // void changeLang(String language) {
  //   // lang = language;
  //   SharedPreferencesController().setLanguage(language: language);
  //   notifyListeners();
  // }

  String lang = SharedPreferencesController().checkLanguage;

  void changeLang() {
    lang = lang == 'en' ? 'ar' : 'en';
    SharedPreferencesController().setLanguage(language: lang);
    notifyListeners();
  }

}