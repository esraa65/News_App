import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';

class CardNews extends StatelessWidget {
  String imagenetworkcard;
  String textcardnews;

  CardNews({required this.imagenetworkcard, required this.textcardnews});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Card(
        color: Constants.cardbackgroudcolor,
        elevation: 5,
        // shadowColor: Constants.appbarColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: (imagenetworkcard == 'null'
                          ? NetworkImage(
                              'https://bitsofco.de/handling-broken-images-with-service-worker/')
                          : NetworkImage('${imagenetworkcard}')),
                    ))),
            Container(
                color: Constants.white,
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    '$textcardnews',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: textfont,
                    ),
                  ),
                )),
            Container(
              decoration: BoxDecoration(
                  color: Constants.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.copy_rounded)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
