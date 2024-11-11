// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'game/lousy_rocket_game.dart';
import 'overlays/game_over.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lousy Rocket',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/rocket': (context) => LousyRocketGameWidget(),
      },
    );
  }
}
