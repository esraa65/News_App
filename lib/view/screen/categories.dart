import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/model/category_dataclass.dart';
import 'package:news_app/widget/categorygridwidget.dart';
class Categories extends StatelessWidget {
  List<CategoryDataClass> Category = [
    CategoryDataClass(
        categoryid: 'categoryid',
        title: 'sports',
        imagepath: 'assets/images/sports.png',
        background: Color.fromARGB(255, 201, 28, 34)),
    CategoryDataClass(
        categoryid: 'categoryid',
        title: 'Politics',
        imagepath: 'assets/images/Politics.png',
        background: Color.fromARGB(255, 0, 62, 144)),
    CategoryDataClass(
        categoryid: 'categoryid',
        title: 'Helth',
        imagepath: 'assets/images/health.png',
        background: Color.fromARGB(255, 237, 30, 121)),
    CategoryDataClass(
        categoryid: 'categoryid',
        title: 'Bussines',
        imagepath: 'assets/images/bussines.png',
        background: Color.fromARGB(255, 207, 126, 72)),
    CategoryDataClass(
        categoryid: 'categoryid',
        title: 'Environment',
        imagepath: 'assets/images/environment.png',
        background: Color.fromARGB(255, 72, 130, 207)),
    CategoryDataClass(
        categoryid: 'categoryid',
        title: 'Science',
        imagepath: 'assets/images/science.png',
        background: Color.fromARGB(255, 242, 211, 82))
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'pick your category of interest',
              style: TextStyle(fontSize: 22, color: Constants.textColor,)),
          ),
          Expanded(child:
          GridView.builder(gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8),
            itemBuilder: (buildContext,index){
              return CategoryGridWidget(Category[index],index);
            },
            itemCount: Category.length,
          ) ,)
        ],
      ),
    );
  }
}
