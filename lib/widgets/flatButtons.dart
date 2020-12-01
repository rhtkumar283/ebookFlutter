//import 'package:eBook/widgets/ourTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './ourTheme.dart';
import '../config/sizeConfig.dart';
import '../models/book.dart';
import './bookItem1.dart';

class Foo extends StatefulWidget {
  final List<Book> books;

  Foo(this.books);

  @override
  State<StatefulWidget> createState() => FooState(books);
}

class FooState extends State<Foo> {
  int buttonSelected = 0;

  List<Book> bookList;

  FooState(this.bookList);

  List<Book> sortScrollList(String key) {
    if (key == 'top rated') {
      return topRated =
          bookList.where((element) => element.category == 'top rated').toList();
    } else if (key == 'best seller') {
      return bestSeller = bookList
          .where((element) => element.category == 'best seller')
          .toList();
    } else if (key == 'new releases') {
      return newReleases = bookList
          .where((element) => element.category == 'new releases')
          .toList();
    }
    return null;
  }

  List<Book> topRated = [];
  List<Book> bestSeller = [];
  List<Book> newReleases = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            getButton(0, 'Top Rated'),
            getButton(1, 'Best Seller'),
            getButton(2, 'New Releases'),
          ],
        ),
        getBody(),
      ],
    );
  }

  Widget getButton(int index, String text) {
    return FlatButton(
      // //clipBehavior: ,
      // shape: Border(left: BorderSide.none),
      onPressed: () {
        // Text(
        //   'data',
        //   style: TextStyle(color: Colors.amber),
        // );
        setState(() {
          buttonSelected = index;
        });
      },
      textColor: buttonSelected == index
          ? OurTheme().buttonActive
          : OurTheme().buttonInactive,
      child: Text(
        "$text",
        style: TextStyle(
          fontSize: SizeConfig.safeBlockHorizontal * 5,
        ),
      ),
    );
  }

  Widget getBody() {
    if (buttonSelected == 0) {
      return MyStatelessWidget(sortScrollList('top rated'));
    } else if (buttonSelected == 1) {
      return MyStatelessWidget(sortScrollList('best seller'));
    } else {
      return MyStatelessWidget(sortScrollList('new releases'));
    }
  }
}
