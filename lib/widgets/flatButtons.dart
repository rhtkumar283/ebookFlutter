import 'package:ebookReader/widgets/verticalListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './ourTheme.dart';

class Foo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FooState();
}

class FooState extends State<Foo> {
  int buttonSelected = 0;

  void showverticalList() {
    VerticalListView();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        getButton(0, 'Top Rated'),
        getButton(1, 'Best Seller'),
        getButton(2, 'New Releases'),
      ],
    );
  }

  Widget getButton(int index, String text) {
    return FlatButton(
      // //clipBehavior: ,
      // shape: Border(left: BorderSide.none),
      onPressed: () {
        Text(
          'data',
          style: TextStyle(color: Colors.amber),
        );
        setState(() {
          buttonSelected = index;
        });
      },
      textColor: buttonSelected == index ? Colors.white : Colors.grey,
      child: Text(
        "$text",
        style: TextStyle(
          fontSize: OurTheme().headingSize,
        ),
      ),
    );
  }
}
