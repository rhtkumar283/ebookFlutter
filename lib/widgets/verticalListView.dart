import 'package:ebookReader/models/book.dart';
import 'package:flutter/material.dart';

import 'bookItem.dart';

class VerticalList extends StatelessWidget {
  final List<Book> books;

  VerticalList(this.books);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (ctx, index) {
        return BookItem(books[index]);
      },
      itemCount: books.length,
    );
  }
}
