import 'package:flutter/material.dart';
import 'package:vi_nex_flutter_app/screens/PostDetail.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          'images/user.JPG',
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return PostDetail();
                              }),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Viet Pham',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxHeight: double.infinity,
                                  ),
                                  child: Text(
                                    'Xin chao, toi la Viet. Toi dang lam App. No hay lam. Ban cung nen thu xem.',
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
    );
  }
}

// Image.asset(
// 'images/user.JPG ',
// width: 10.0,
// height: 10.0,
// ),
