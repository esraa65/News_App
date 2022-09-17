import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/view/screen/settings/settingsscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 48),
                    color: Constants.appbarColor,
                    width: double.infinity,
                    child: Text(
                      AppLocalizations.of(context)!.app_title,
                      style:
                          TextStyle(fontSize: 24, color: Constants.appbartext),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.list,
                        size: 36,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext Context) {
                            return HomeScreen();
                          }));
                        },
                        child: Text(
                          AppLocalizations.of(context)!.categories,
                          style: TextStyle(
                              fontSize: 24, color: Constants.sidebartextColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 36,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return SettingsScreen();
                          }));
                        },
                        child: Text(
                          AppLocalizations.of(context)!.settings,
                          style: TextStyle(
                              fontSize: 24, color: Constants.sidebartextColor),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
