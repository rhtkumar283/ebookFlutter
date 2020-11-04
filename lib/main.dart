import './scrollView.dart';

import './searchBar.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
            height: 100,
            child: Search(),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
            height: 260,
            child: ScrollSection(),
          ),
        ],
      ),
    );
  }
}
