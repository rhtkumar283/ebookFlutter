import 'package:ebookReader/models/book.dart';
import 'package:ebookReader/widgets/ourTheme.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book books;

  BookItem(this.books);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //contentPadding: EdgeInsets.all(30),
      tileColor: OurTheme().primanryColor,
      leading: Image.asset('assets/images/1.jpg'),
      title: Text(
        books.title,
        style: TextStyle(
            fontSize: OurTheme().headingSize, color: OurTheme().textColor),
      ),
      subtitle: Text(
        books.author,
        style: TextStyle(color: OurTheme().textColor),
      ),
      trailing: IconButton(
        icon: Icon(Icons.bookmark),
        color: OurTheme().secondaryColor,
        onPressed: () {},
      ),
    );
  }
}
