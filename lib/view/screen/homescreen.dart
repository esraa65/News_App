import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/view/screen/bestnewspage.dart';
import 'package:news_app/view/screen/settings/settingsscreen.dart';
import 'package:news_app/view/widget/categories_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                        color: Constants.sidebartextColor,
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
                              fontSize: 24, color: Constants.drawertextcolor),
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
                        color: Constants.sidebartextColor,
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
                              fontSize: 24, color: Constants.drawertextcolor),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Chose news category ',
                  style: TextStyle(
                      fontSize: fonttitle, color: Constants.titlecolor),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Constants.elevatedbuttoncolor)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return BestNewPage();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Best News',
                      style: TextStyle(
                          fontSize: textfont, color: Constants.titlecolor),
                    ),
                  )),
              Expanded(
                  child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
                children: [
                  CategoriesButton(
                      textcategory: 'Bussines',
                      imageurl: "assets/images/bussines.png"),
                  CategoriesButton(
                      textcategory: 'Environment',
                      imageurl: "assets/images/environment.png"),
                  CategoriesButton(
                      textcategory: 'Health',
                      imageurl: "assets/images/health.png"),
                  CategoriesButton(
                      textcategory: 'Science',
                      imageurl: "assets/images/science.png"),
                  CategoriesButton(
                      textcategory: 'Sports',
                      imageurl: "assets/images/sports.png"),
                  CategoriesButton(
                      textcategory: 'Politics',
                      imageurl: "assets/images/Politics.png"),
                ],
              ))
            ],
          ),
        ),
      ],
    );
  }
}
