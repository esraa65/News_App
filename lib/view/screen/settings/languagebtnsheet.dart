
import 'package:flutter/material.dart';

class LangaugebtnSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('English',style: TextStyle(fontSize: 25),),
              Icon(Icons.check_sharp)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Arabic',style: TextStyle(fontSize: 25)),
        )
      ],
    );
  }
}
