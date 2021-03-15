import 'package:flutter/material.dart';
import 'package:vi_nex_flutter_app/MainStructure.dart';
import 'package:vi_nex_flutter_app/screens/PostsFeed.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7EC8E3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Vi Nex',
              style: TextStyle(
                fontSize: 90.0,
                fontFamily: 'DotGothic16',
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              height: 50.0,
              width: 100.0,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return MainStructure();
                    }),
                  );
                },
                child: Text('Sign In'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.lightGreen),
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.yellowAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
