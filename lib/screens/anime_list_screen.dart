import 'package:flutter/material.dart';

class AnimeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animelerim'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Anime 1'),
          ),
          ListTile(
            title: Text('Anime 2'),
          ),
          ListTile(
            title: Text('Anime 3'),
          ),
        ],
      ),
    );
  }
}
