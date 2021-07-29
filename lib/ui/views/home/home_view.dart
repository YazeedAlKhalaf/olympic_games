import 'package:flutter/material.dart';
import 'package:olympic_games/ui/widgets/olympic_ring.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    color: Color(0xff0B035A),
                  ),
                ),
                Positioned(
                  top: 60,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "TOKYO",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        "2020",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 60,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Color(0xffDA3906),
                  ),
                ),

                // olympic rings big without black ring
                Positioned(
                  bottom: 60,
                  left: -130,
                  child: OlympicRing(
                    color: Color(0xff8080FE),
                  ),
                ),
                Positioned(
                  bottom: -50,
                  left: -22.5,
                  child: OlympicRing(
                    color: Color(0xffFFB419),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  right: -130,
                  child: OlympicRing(
                    color: Color(0xffB7303E),
                  ),
                ),
                Positioned(
                  bottom: -50,
                  right: -22.5,
                  child: OlympicRing(
                    color: Color(0xff1B573D),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
