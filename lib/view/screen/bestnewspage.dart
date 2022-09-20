import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/control/Api.dart';
import 'package:news_app/view/widget/cardnews.dart';

class BestNewPage extends StatefulWidget {
  const BestNewPage({Key? key}) : super(key: key);

  @override
  State<BestNewPage> createState() => _BestNewPageState();
}

class _BestNewPageState extends State<BestNewPage> {
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
        body: Column(
          children: [
            Expanded(
                child: FutureBuilder(
                    future: Api.fetchNews(),
                    builder: (BuildContext context,
                        AsyncSnapshot<dynamic> snapshot) {
                      return (snapshot.data == null)
                          ? Center(
                              child: CircularProgressIndicator(
                              color: Constants.appbarColor,
                            ))
                          : ListView.builder(
                              itemCount: snapshot.data.length,
                              itemBuilder: (BuildContext context, int index) {
                                return CardNews(
                                    imagenetworkcard:
                                        snapshot.data[index].UrlToImage,
                                    textcardnews: snapshot.data[index].title);
                              });
                    }))
          ],
        ),
      )
    ]);
  }
}
