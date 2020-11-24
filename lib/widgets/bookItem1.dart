import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/book.dart';
import '../widgets/ourTheme.dart';
import '../config/sizeConfig.dart';

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
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.safeBlockVertical * 0.6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: thumbnail,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 2),
              child: _VideoDescription(
                title: title,
                author: author,
                genre: genre,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                0, SizeConfig.safeBlockVertical * 1.8, 0, 0),
            child: Icon(
              CupertinoIcons.bookmark,
              size: SizeConfig.safeBlockHorizontal * 6,
              color: OurTheme().secTextColor,
            ),
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
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.safeBlockHorizontal * 0.6, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: SizeConfig.safeBlockHorizontal * 3.8,
              color: Colors.white,
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
            vertical: SizeConfig.safeBlockVertical * 0.3,
          )),
          Text(
            author,
            style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 3,
                color: Colors.grey),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
            vertical: SizeConfig.safeBlockVertical * 3.5,
          )),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: SizeConfig.safeBlockVertical * 4.3,
                width: SizeConfig.safeBlockHorizontal * 16,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  disabledColor: Colors.red[50],
                  color: Color.fromRGBO(51, 40, 51, 0.8),
                  onPressed: () {},
                  child: Text(
                    genre.split(' ').first,
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 2.2,
                        color: Color.fromRGBO(223, 93, 107, 0.8)),
                  ),
                ),
              ),
              SizedBox(width: SizeConfig.safeBlockHorizontal * 1),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 4.3,
                width: SizeConfig.safeBlockHorizontal * 16,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  color: Color.fromRGBO(34, 38, 61, 0.8),
                  onPressed: () {},
                  child: Text(
                    genre.split(' ').elementAt(1),
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 2.2,
                      color: Color.fromRGBO(70, 75, 196, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(width: SizeConfig.safeBlockHorizontal * 1),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 4.3,
                width: SizeConfig.safeBlockHorizontal * 17,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  color: Color.fromRGBO(34, 52, 50, 0.8),
                  onPressed: () {},
                  child: Text(
                    genre.split(' ').last,
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 2.2,
                        color: Color.fromRGBO(61, 160, 87, 1)),
                  ),
                ),
              ),
            ],
          ),

          // Text(
          //   genre,
          //   style: const TextStyle(fontSize: 10.0, color: Colors.grey),
          // ),
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
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Container(
        height: SizeConfig.safeBlockVertical * 36,

        child: CustomScrollView(slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => CustomListItem(
                author: book[index].author,
                genre: book[index].genre,
                thumbnail: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: book[index].img,
                ),
                title: book[index].title,
              ),
              childCount: book.length,
            ),
          ),
        ]),

        // child: ListView.builder(
        //   padding: const EdgeInsets.all(8.0),
        //   shrinkWrap: true,
        //   itemBuilder: (ctx, index) {
        //     return CustomListItem(
        //       author: book[index].author,
        //       genre: book[index].genre,
        //       thumbnail: ClipRRect(
        //         borderRadius: BorderRadius.circular(15),
        //         child: book[index].img,
        //       ),
        //       title: book[index].title,
        //     );
        //   },
        //   itemCount: book.length,
        // ),
      ),
    );
  }
}
