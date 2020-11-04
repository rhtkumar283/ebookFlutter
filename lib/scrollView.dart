import 'package:flutter/material.dart';

class ScrollSection extends StatelessWidget {
  Widget getWidget(imagePath, text) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Column(children: <Widget>[
          Image.asset(imagePath),
          Text(
            text,
            style: TextStyle(fontSize: 50),
          )
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trending Book',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  getWidget('assets/images/1.jpg', 'The Book of Two..'),
                  getWidget('assets/images/2.jpg', 'I\'ll be Seeing You'),
                  getWidget('assets/images/3.jpg', 'Love Your Life'),
                  getWidget('assets/images/4.jpg', 'The Last Druid'),
                  getWidget('assets/images/5.jpg', 'The Purpose of Po..'),
                  getWidget('assets/images/6.jpg', 'Olive, Again'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
