import 'package:flutter/material.dart';

import '../models/book.dart';
import '../widgets/ourTheme.dart';

class ScrollSection extends StatelessWidget {
  final List<Book> books;

  ScrollSection(this.books);

  Widget getWidget(image, title, author) {
    return Container(
      //padding: EdgeInsets.only(left: 10),
      //decoration: BoxDecoration(shape: BoxShape.circle),
      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Column(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: image,
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 50, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          Text(
            author,
            style: TextStyle(fontSize: 45, color: OurTheme().secTextColor),
          )
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Trending',
                style: TextStyle(
                    color: OurTheme().textColor,
                    fontSize: OurTheme().headingSize,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            FlatButton(
              onPressed: () {},
              child: Text(
                'see more',
                style: TextStyle(
                    color: OurTheme().secTextColor,
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          color: OurTheme().primanryColor,
          margin: EdgeInsets.only(bottom: 20),
          height: (MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top) *
              0.28,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return getWidget(
                  books[index].img, books[index].title, books[index].author);
            },
            scrollDirection: Axis.horizontal,
            itemCount: books.length,
          ),
        ),
      ],
    );
  }
}
