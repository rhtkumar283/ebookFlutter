import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

class Search extends StatelessWidget {
  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Post(
        "Title : $search $index",
        "Description :$search $index",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: SearchBar<Post>(
            onSearch: search,
            onItemFound: (Post post, int index) {
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.description),
              );
            },
            hintText: "Search",
            //icon: Icon(Icons.search),
            searchBarStyle: SearchBarStyle(
              backgroundColor: Colors.grey[50],
              padding: EdgeInsets.all(5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
