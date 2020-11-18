import 'package:ebookReader/models/book.dart';

import '../widgets/ourTheme.dart';
import 'package:flutter/material.dart';

class ScrollSection extends StatelessWidget {
  final List<Book> book;
  ScrollSection(this.book);
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
                style: TextStyle(color: OurTheme().secTextColor),
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          color: OurTheme().primanryColor,
          margin: EdgeInsets.only(bottom: 20),
          height: 250,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return getWidget(
                  book[index].img, book[index].title, book[index].author);
            },
            itemCount: book.length,
            scrollDirection: Axis.horizontal,
            // children: [
            //   getWidget(
            //       'assets/images/1.jpg', 'The Book of Two..', 'Jodi Picoult'),
            //   getWidget(
            //       'assets/images/2.jpg', 'I\'ll be Seeing You', 'Jodi Picoult'),
            //   getWidget(
            //       'assets/images/3.jpg', 'Love Your Life', 'Jodi Picoult'),
            //   getWidget(
            //       'assets/images/4.jpg', 'The Last Druid', 'Jodi Picoult'),
            //   getWidget(
            //       'assets/images/5.jpg', 'The Purpose of Po..', 'Jodi Picoult'),
            //   getWidget('assets/images/6.jpg', 'Olive, Again', 'Jodi Picoult'),
            // ],
          ),
        ),
      ],
    );
  }
}
