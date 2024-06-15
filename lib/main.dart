import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/anime_list_screen.dart';
import 'screens/anime_category_screen.dart';

void main() {
  runApp(AnimeZoneApp());
}

class AnimeZoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime Zone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/register': (context) => RegisterScreen(),
        '/profile': (context) => ProfileScreen(),
        '/anime_list': (context) => AnimeListScreen(),
        '/anime_category': (context) => AnimeCategoryScreen(),
      },
    );
  }
}
