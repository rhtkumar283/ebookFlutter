import 'package:flutter/material.dart';

class ScrollSection2 extends StatelessWidget {
  Widget getWidget(imagePath, text) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Column(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(imagePath),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 50,
            ),
          )
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Most Popular Books',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            new Spacer(),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.grey[600],
                  size: 25,
                ),
              ),
            ),
          ],
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 210,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              getWidget('assets/images/1.jpg', 'The Book of Two'),
              getWidget('assets/images/2.jpg', 'your text here'),
              getWidget('assets/images/3.jpg', 'your text here'),
              getWidget('assets/images/4.jpg', 'your text here'),
              getWidget('assets/images/5.jpg', 'your text here'),
              getWidget('assets/images/6.jpg', 'your text here'),
            ],
          ),
        ),
      ],
    );
  }
}
