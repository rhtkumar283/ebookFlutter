import 'widgets/ourTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:flutter/material.dart';

import './widgets/ourTheme.dart';
import './widgets/scrollView.dart';
import './widgets/searchBar.dart';
import './models/book.dart';
import './widgets/flatButtons.dart';
import './widgets/navBar.dart';

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
        author: 'Rohit',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'top rated'),
    Book(
        id: 'b2',
        img: Image.asset('assets/images/2.jpg'),
        title: 'ABD Murder',
        author: 'Prakhar',
        description: 'ABD',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'best seller'),
    Book(
        id: 'b2',
        img: Image.asset('assets/images/6.jpg'),
        title: 'ABD Murder',
        author: 'Prakhar',
        description: 'ABD',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'best seller'),
    Book(
        id: 'b1',
        img: Image.asset('assets/images/5.jpg'),
        title: 'ABC Murder',
        author: 'Yash',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'new releases'),
    Book(
        id: 'b1',
        img: Image.asset('assets/images/1.jpg'),
        title: 'ABC Murder',
        author: 'Yash',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'new releases'),
    Book(
        id: 'b1',
        img: Image.asset('assets/images/3.jpg'),
        title: 'ABC Murder',
        author: 'Yash',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'new releases'),
    Book(
        id: 'b1',
        img: Image.asset('assets/images/4.jpg'),
        title: 'ABC Murder',
        author: 'Rohit',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'top rated'),
    Book(
        id: 'b1',
        img: Image.asset('assets/images/5.jpg'),
        title: 'ABC Murder',
        author: 'Rohit',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'top rated'),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.house_alt_fill,
          //size: 25,
        ),
        //title: (" "),
        activeColor: OurTheme().buttonActive,
        inactiveColor: OurTheme().buttonInactive,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.bell_fill,
          //size: 25,
        ),
        //title: (" "),
        activeColor: OurTheme().buttonActive,
        inactiveColor: OurTheme().buttonInactive,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.person_crop_circle_fill,
          //size: 25,
        ),
        //title: (" "),
        activeColor: OurTheme().buttonActive,
        inactiveColor: OurTheme().buttonInactive,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.gear_alt_fill,
          //size: 25,
        ),
        //title: (" "),
        activeColor: OurTheme().buttonActive,
        inactiveColor: OurTheme().buttonInactive,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: OurTheme().primanryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('MyBookList'),
        backgroundColor: OurTheme().primanryColor,
        elevation: 0,
        leading: Icon(
          CupertinoIcons.person_fill,
          color: OurTheme().buttonActive,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Search Widgets
            // Container(
            //   height: (mediaQuery.size.height -
            //           mediaQuery.padding.top -
            //           kBottomNavigationBarHeight) *
            //       0.17,
            //   child: Search(),
            // ),

            //Horizontal Scroll Section
            ScrollSection(_books),

            //Flat buttons
            //Foo(_books),

            //Vertical List
            // SingleChildScrollView(
            //     child: Container(height: 350, child: Foo(_books))),
            Foo(_books),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBarWidget(items: _navBarsItems()),
    );
  }
}
