import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  String applanguage='en';
  void ChangeAppLanguage(String newlanguage){
    if(applanguage==newlanguage)
      return ;
    applanguage=newlanguage;
    notifyListeners();
  }
  String GetSelectedLanguageText(){
    if(applanguage=='ar'){
      return "Arabic";
    }return "English";
  }
}