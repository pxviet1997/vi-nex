import 'package:flutter/material.dart';
import 'package:vi_nex_flutter_app/screens/PostDetail.dart';
import 'package:vi_nex_flutter_app/screens/PostsFeed.dart';
import 'package:vi_nex_flutter_app/components/AddPost.dart';

class MainStructure extends StatefulWidget {
  @override
  _MainStructureState createState() => _MainStructureState();
}

class _MainStructureState extends State<MainStructure> {
  int _selectedScreen = 0;

  List<Widget> _widgetOption = <Widget>[
    PostsFeed(),
    PostDetail(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vi Nex'),
        leading: null,
      ),
      body: _widgetOption.elementAt(_selectedScreen),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alternate_email),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedScreen,
        onTap: (index) {
          setState(() {
            _selectedScreen = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('New Post');
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return AddPost();
              });
        },
        child: Icon(Icons.exposure_plus_1),
      ),
    );
  }
}
