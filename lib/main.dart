import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      new MaterialApp(
        home: new happyButton(),
      )
  );
}

class happyButton extends StatefulWidget {
  @override
  happyState createState() => new happyState();
}

//class sadButton extends StatefulWidget {
//  @override
//  sadButtonState createState() => new sadButtonState();
//}
//class sadState extends State<sadButton>{
//  var rn = ne
//}

class happyState extends State<happyButton> {
  var rng = new Random();
  List<String> happyStrings = [ // add more sad strings
    "You're amazing",
    "I love you",
    "You're awesome...",
    "Purdue's prettiest girl"
  ]; // add more phrases

  List <String> sadString = [ // add more sad strings
    "오빠가 미안해...",
    "잘못했어...",
    "뽀뽀해줄게..."
  ];

  List <String> jokeStrings = [ // add more sad strings
    "박서준이 아니라서 미안해...",
    "오빠는...널위해 모든걸 줄수있어...",
    "오빠가 다 사줄게..."
  ];

  String displayedString = "";
  String name = "lib/images/def.png";
  void happyPressed() {
    setState(() {
      name = "lib/images/happy.png";
      displayedString = happyStrings[rng.nextInt(happyStrings.length)];
    });
  }
  void sadPressed() {
    setState(() {
      name = "lib/images/sad.png";
      displayedString = sadString[rng.nextInt(sadString.length)];
    });
  }
  void jokePressed() {
    setState(() {
      name = "lib/images/joke.png"; // make a list of strings with the file names and randomly generate photos
      displayedString = jokeStrings[rng.nextInt(jokeStrings.length)];
    });
  }
  void rePressed() {
    setState(() {
      name = "lib/images/def.png";
      displayedString = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Keep Rae Lee Happy"),
            backgroundColor: Colors.lightGreen),
        body: new Container(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(name),
                      new Text(displayedString, style: new TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold)),
                      new Padding(padding: new EdgeInsets.all(10.0)),

                      new RaisedButton(
                          child: new Text("She's amazing", style: new TextStyle(
                              color: Colors.white, fontSize: 20.0)),
                          color: Colors.deepOrange,
                          onPressed: happyPressed
                      ),new RaisedButton(
                          child: new Text("She's sad", style: new TextStyle(
                              color: Colors.white, fontSize: 20.0)),
                          color: Colors.blueAccent,
                          onPressed: sadPressed
                      ),
                      new RaisedButton(
                        child: new Text("Make her simle", style: new TextStyle(
                            color: Colors.white, fontSize: 20.0)),
                        color: Colors.yellow,
                        onPressed: jokePressed,
                      ),
                      new RaisedButton(
                          child: new Text("reset", style: new TextStyle(
                              color: Colors.white, fontSize: 20.0)),
                          color: Colors.grey,
                          onPressed: rePressed
                      )

                    ]
                )

            )

        ));
  }
}
