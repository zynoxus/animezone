import 'package:flutter/material.dart';

class AnimeCategoryScreen extends StatelessWidget {
  final List<String> categories = ['Shounen', 'Shoujo', 'Seinen', 'Josei', 'Isekai'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animeler'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categories[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnimeListScreen(category: categories[index])),
              );
            },
          );
        },
      ),
    );
  }
}

class AnimeListScreen extends StatelessWidget {
  final String category;

  AnimeListScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    // Dummy list of anime for demonstration
    final List<String> animeList = [
      'Anime 1',
      'Anime 2',
      'Anime 3',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Animeleri'),
      ),
      body: ListView.builder(
        itemCount: animeList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(animeList[index]),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime Zone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimeCategoryScreen(),
    );
  }
}
