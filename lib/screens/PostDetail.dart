import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Image.asset(
                                'images/user.JPG',
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text(
                              'Viet Pham',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: double.infinity,
                        ),
                        child: Text(
                          'Xin chao, toi la Viet. Toi dang lam App. No hay lam. Ban cung nen thu xem.',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            print('Like');
                          },
                          child: Text(
                            'Like',
                            style: TextStyle(fontSize: 15.0),
                          ),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(0.0),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            print('Comment');
                          },
                          child: Text(
                            'Comment',
                            style: TextStyle(fontSize: 15.0),
                          ),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(0.0),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            print('Share');
                          },
                          child: Text(
                            'Share',
                            style: TextStyle(fontSize: 15.0),
                          ),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(0.0),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1.0,
              height: 0.0,
            ),
          ],
        ),
      ),
    );
  }
}
