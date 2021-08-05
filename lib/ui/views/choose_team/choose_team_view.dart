import 'package:flutter/material.dart';

class ChooseTeamView extends StatefulWidget {
  const ChooseTeamView({Key? key}) : super(key: key);

  @override
  _ChooseTeamViewState createState() => _ChooseTeamViewState();
}

class _ChooseTeamViewState extends State<ChooseTeamView> {
  final List<Map<String, dynamic>> countries = <Map<String, dynamic>>[
    {
      "emoji": "🇸🇦",
      "name": "Saudi Arabia",
      "isFavorite": true,
    },
    {
      "emoji": "🇦🇷",
      "name": "Argentina",
      "isFavorite": false,
    },
    {
      "emoji": "🇧🇪",
      "name": "Belgium",
      "isFavorite": true,
    },
    {
      "emoji": "🇧🇷",
      "name": "Brazil",
      "isFavorite": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardInView = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      backgroundColor: Color(0xff381A9F),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () async {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Choose your\nfavourite team",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    style: TextStyle(
                      color: Color(0xffCFB8FC),
                    ),
                    decoration: InputDecoration(
                      hintText: "Search team",
                      hintStyle: TextStyle(
                        color: Color(0xff8C71E1),
                      ),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Color(0xffCFB8FC),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(0xff573ABA),
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(0xffCFB8FC),
                          width: 2,
                        ),
                      ),
                    ),
                    cursorColor: Color(0xffCFB8FC),
                  ),
                  const SizedBox(height: 10),

                  // thanks for those for helping us:
                  // github: https://github.com/mponkin/fading_edge_scrollview/blob/master/lib/src/fading_edge_scrollview.dart#L298
                  // stackoverflow: https://stackoverflow.com/a/53029458
                  Expanded(
                    child: ShaderMask(
                      blendMode: BlendMode.dstIn,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color(0xff381A9F).withOpacity(1.0),
                            Colors.transparent,
                            Colors.transparent,
                          ],
                        ).createShader(bounds);
                      },
                      child: ListView.separated(
                        itemCount: countries.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider(
                            color: Color(0xff5336B7),
                            thickness: 1.5,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          final Map<String, dynamic> country = countries[index];

                          return ListTile(
                            leading: Text(
                              country["emoji"] as String,
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            title: Text(
                              country["name"] as String,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            trailing: Icon(
                              country["isFavorite"] as bool
                                  ? Icons.favorite_rounded
                                  : Icons.favorite_outline_rounded,
                              color: Color(0xffD5BDF9),
                            ),
                            onTap: () async {},
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (!isKeyboardInView)
              Positioned(
                bottom: -120,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 125,
                  backgroundColor: Color(0xffDA3906),
                ),
              ),
            if (!isKeyboardInView)
              Positioned(
                bottom: 120,
                right: 0,
                child: Image.asset(
                  "assets/chopsticks.png",
                  width: 220,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
