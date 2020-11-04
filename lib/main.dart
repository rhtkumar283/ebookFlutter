import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ebookReader/widgets/navBar.dart';
import 'package:flutter/material.dart';

import './widgets/scrollView1.dart';
import './widgets/scrollView2.dart';
import './widgets/searchBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ebook Reader',
      // theme: ThemeData(
      //   primarySwatch: Colors.white,
      //   accentColor: Colors.grey[100],
      //   // errorColor: Colors.red,
      //   //fontFamily: 'Quicksand',
      //   textTheme: ThemeData.light().textTheme.copyWith(
      //         headline6: TextStyle(
      //           fontFamily: 'OpenSans',
      //           fontWeight: FontWeight.bold,
      //           fontSize: 18,
      //         ),
      //         button: TextStyle(color: Colors.white),
      //       ),
      // ),
      home: EbookMain(),
    );
  }
}

class EbookMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MyBookList',
          style: TextStyle(color: Colors.blueGrey),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(
              Icons.grid_view,
              color: Colors.blueGrey,
              size: 35,
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 22),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.login,
                  color: Colors.blueGrey,
                  size: 35,
                ),
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            child: Search(),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: ScrollSection1(),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: ScrollSection2(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.grey[700],
          ),
          Icon(
            Icons.book,
            size: 30,
            color: Colors.grey[700],
          ),
          Icon(
            Icons.bookmark,
            size: 30,
            color: Colors.grey[700],
          ),
        ],
        onTap: null,
        height: 55,
        backgroundColor: Colors.grey[50],
        animationCurve: Curves.decelerate,
        animationDuration: Duration(milliseconds: 300),
      ),
    );
  }
}
