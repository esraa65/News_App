import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/model/category_dataclass.dart';

class CategoryGridWidget extends StatelessWidget {
  CategoryDataClass categorydataClass;
  int index;
  CategoryGridWidget(this.categorydataClass, this.index);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: categorydataClass.background,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(index % 2 == 0 ? 25 : 0),
                bottomRight: Radius.circular(index % 2 == 0 ? 0 : 25))),
        child: Column(
          children: [
            Image.asset(
              categorydataClass.imagepath,
              height: 120,
            ),
            Text(
              categorydataClass.title,
              style: TextStyle(fontSize: 22, color: Constants.appbartext),
            )
          ],
        ),
      ),
    );
  }
}
