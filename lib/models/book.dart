import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Book {
  final String id;
  final Image img;
  final String title;
  final String author;
  final String description;
  final double rating;
  final String genre;

  Book({
    @required this.id,
    @required this.img,
    @required this.title,
    @required this.author,
    @required this.description,
    @required this.rating,
    @required this.genre,
  });
}
