import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './ourTheme.dart';
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

  List<Book> bestSeller = [];

  List<Book> newReleases = [
    Book(
        id: 'b1',
        img: Image.asset('assets/images/5.jpg'),
        title: 'ABC Murder',
        author: 'A',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller, Murder, Comedy',
        category: 'top rated'),
  ];

  // List<Book> sortScrollList(String key) {
  //   if (key == 'top rated') {
  //     return topRated = bookList;
  //   } else if (key == 'best seller') {
  //     return bestSeller =
  //         bookList.where((element) => element.category == 'best seller');
  //   } else if (key == 'new releases') {
  //     return newReleases =
  //         bookList.where((element) => element.category == 'new releases');
  //   }
  //   return null;
  // }

  // List<Book> topRated = [];
  // List<Book> bestSeller = [];
  // List<Book> newReleases = [];

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

  Widget getBody() {
    if (buttonSelected == 0) {
      return MyStatelessWidget(bookList);
    } else if (buttonSelected == 1) {
      return MyStatelessWidget(bestSeller);
    } else {
      return MyStatelessWidget(newReleases);
    }
  }
}
