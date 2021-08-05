import 'package:flutter/material.dart';
import 'package:olympic_games/ui/views/home/home_view.dart';

class OlympicGames extends StatelessWidget {
  const OlympicGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Olympic Games",
      theme: ThemeData.light(),
      home: HomeView(),
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus!.unfocus();
          },
          child: child,
        );
      },
    );
  }
}
