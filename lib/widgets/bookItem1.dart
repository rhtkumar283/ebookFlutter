import 'package:ebookReader/models/book.dart';
import 'package:ebookReader/widgets/ourTheme.dart';
import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.thumbnail,
    this.title,
    this.author,
    this.genre,
  });

  final Widget thumbnail;
  final String title;
  final String author;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FittedBox(fit: BoxFit.fill, child: thumbnail),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: _VideoDescription(
                title: title,
                author: author,
                genre: genre,
              ),
            ),
          ),
          Icon(
            Icons.add,
            size: 25,
            color: OurTheme().secTextColor,
          ),
        ],
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key key,
    this.title,
    this.author,
    this.genre,
  }) : super(key: key);

  final String title;
  final String author;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            author,
            style: const TextStyle(fontSize: 14.0, color: Colors.grey),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            genre,
            style: const TextStyle(fontSize: 10.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget(this.book);

  final List<Book> book;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (ctx, index) {
        return CustomListItem(
          author: book[index].author,
          genre: book[index].genre,
          thumbnail: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/images/4.jpg'),
          ),
          title: book[index].title,
        );
      },
      itemCount: book.length,
      //itemExtent: 160.0,
      // children: <CustomListItem>[
      //   CustomListItem(
      //     author: 'Jodi Picoult',
      //     genre: 'Thriller',
      //     thumbnail: ClipRRect(
      //       borderRadius: BorderRadius.circular(50),
      //       child: Image.asset('assets/images/3.jpg'),
      //     ),
      //     title: 'Love your Life',
      //   ),
      // ],
    );
  }
}
