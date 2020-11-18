import 'package:ebookReader/models/book.dart';
//import 'package:ebookReader/widgets/bookItem1.dart';
import 'package:ebookReader/widgets/flatButtons.dart';

//import 'package:flutter/services.dart';

import './widgets/ourTheme.dart';
import './widgets/scrollView.dart';
import './widgets/searchBar.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ebook Reader',
      home: EbookMain(),
    );
  }
}

class EbookMain extends StatelessWidget {
  final List<Book> _books = [
    Book(
        id: 'b1',
        img: Image.asset('assets/images/1.jpg'),
        title: 'ABC Murder',
        author: 'A',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller, Murder, Comedy',
        category: 'top rated'),
    Book(
        id: 'b2',
        img: Image.asset('assets/images/2.jpg'),
        title: 'ABD Murder',
        author: 'B ',
        description: 'ABD',
        rating: 4.5,
        genre: 'Thriller, Murder, Comedy',
        category: 'best seller'),
    Book(
        id: 'b1',
        img: Image.asset('assets/images/5.jpg'),
        title: 'ABC Murder',
        author: 'C',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller, Murder, Comedy',
        category: 'new releases'),
    Book(
        id: 'b1',
        img: Image.asset('assets/images/3.jpg'),
        title: 'ABC Murder',
        author: 'A',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller, Murder, Comedy',
        category: 'top rated'),
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

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: OurTheme().primanryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Search Widgets
            Container(
              height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.18,
              child: Search(),
            ),

            //Horizontal Scroll Section
            ScrollSection(),

            //Flat buttons
            //Foo(_books),

            //Vertical List
            // SingleChildScrollView(
            //     child: Container(height: 350, child: Foo(_books))),
            Foo(_books),
          ],
        ),
      ),
      //test
    );
  }
}
