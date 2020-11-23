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
        author: 'A',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'top rated'),
    Book(
        id: 'b2',
        img: Image.asset('assets/images/2.jpg'),
        title: 'ABD Murder',
        author: 'B ',
        description: 'ABD',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'best seller'),
    Book(
        id: 'b2',
        img: Image.asset('assets/images/6.jpg'),
        title: 'ABD Murder',
        author: 'B ',
        description: 'ABD',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'best seller'),
    Book(
        id: 'b1',
        img: Image.asset('assets/images/5.jpg'),
        title: 'ABC Murder',
        author: 'C',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'new releases'),
    Book(
        id: 'b1',
        img: Image.asset('assets/images/1.jpg'),
        title: 'ABC Murder',
        author: 'C',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'new releases'),
    Book(
        id: 'b1',
        img: Image.asset('assets/images/3.jpg'),
        title: 'ABC Murder',
        author: 'C',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'new releases'),
    Book(
        id: 'b1',
        img: Image.asset('assets/images/3.jpg'),
        title: 'ABC Murder',
        author: 'A',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'top rated'),
    Book(
        id: 'b1',
        img: Image.asset('assets/images/5.jpg'),
        title: 'ABC Murder',
        author: 'A',
        description: 'ABC',
        rating: 4.5,
        genre: 'Thriller Murder Comedy',
        category: 'top rated'),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColor: CupertinoColors.white,
        inactiveColor: Colors.grey[700],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.search),
        title: ("Search"),
        activeColor: CupertinoColors.white,
        inactiveColor: Colors.grey[700],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.profile_circled),
        title: ("Profile"),
        activeColor: CupertinoColors.white,
        inactiveColor: Colors.grey[700],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("Settings"),
        activeColor: CupertinoColors.white,
        inactiveColor: Colors.grey[700],
      ),
    ];
  }

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
