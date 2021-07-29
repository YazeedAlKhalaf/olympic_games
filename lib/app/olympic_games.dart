import 'package:flutter/material.dart';
import 'package:olympic_games/ui/views/home/home_view.dart';

class OlympicGames extends StatelessWidget {
  const OlympicGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Olympic Games",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}
