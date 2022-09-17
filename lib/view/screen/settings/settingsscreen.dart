import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/view/screen/settings/languagebtnsheet.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.white,
        child: Image.asset(
          'assets/images/pattern.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
      Scaffold(
        appBar: AppBar(
            backgroundColor: Constants.appbarColor,
            centerTitle: true,
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: TextStyle(fontSize: 22, color: Constants.appbartext),
            )),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  AppLocalizations.of(context)!.language,
                  style: TextStyle(
                      fontSize: 24, color: Constants.sidebartextColor),
                ),
              ),
              Container(
                 width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(28)),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(onTap: (){
                        showLanguagebtnSheet();
                      },
                        child: Text(
                          'English',
                          style: TextStyle(fontSize: 22, color: Colors.teal),
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_sharp)
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }

  void showLanguagebtnSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return LangaugebtnSheet();
        });
  }
}
