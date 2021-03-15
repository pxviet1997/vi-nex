import 'package:flutter/material.dart';
import 'package:vi_nex_flutter_app/components/Post.dart';

class PostsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Post();
      },
    );
  }
}
