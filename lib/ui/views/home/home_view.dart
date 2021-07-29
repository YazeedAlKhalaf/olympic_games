import 'dart:developer';

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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          // this is hacky fix for a small problem regarding
                          // positioning widgets in a stack.
                          Container(
                            // width: MediaQuery.of(context).size.width,
                            width: 100,
                            height: 50,
                          ),
                          Positioned(
                            left: 2,
                            child: OlympicRing(
                              radius: 15,
                              borderWidth: 2,
                              color: Color(0xff0098C6),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 19,
                            child: OlympicRing(
                              radius: 15,
                              borderWidth: 2,
                              color: Color(0xffFFB419),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            left: 0,
                            child: OlympicRing(
                              radius: 15,
                              borderWidth: 2,
                              color: Color(0xff000000),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: OlympicRing(
                              radius: 15,
                              borderWidth: 2,
                              color: Color(0xffB7303E),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 19,
                            child: OlympicRing(
                              radius: 15,
                              borderWidth: 2,
                              color: Color(0xff1B573D),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                "Welcome to the official app for the Olympic and Paralympic Games of",
                          ),
                          TextSpan(text: "\n"),
                          TextSpan(
                            text: "Tokyo 2020!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5000),
                      ),
                    ),
                    onPressed: () {
                      log(
                        "Clicked on 'continue' button",
                        name: "HomeView",
                        time: DateTime.now(),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 40,
                      ),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
