import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';

class CategoriesButton extends StatelessWidget {
  String textcategory;
  String imageurl;

  CategoriesButton({required this.textcategory, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              color: Constants.cardbackgroudcolor),
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(imageurl),
                ),
                Container(
                    child: Text(
                  textcategory,
                  style: TextStyle(fontSize: 15, color: Constants.titlecolor),
                ))
              ],
            ),
          )),
    );
  }
}
