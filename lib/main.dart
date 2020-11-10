import 'package:ebookReader/widgets/flatButtons.dart';

import './widgets/verticalListView.dart';

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
            Foo(),
          ],
        ),
      ),
      //test
    );
  }
}
