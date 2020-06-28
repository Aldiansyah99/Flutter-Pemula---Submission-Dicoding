import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_catalogue/theme/theme.dart';
import 'package:movie_catalogue/ui/page/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: "Movie Catalogue",
      home: Splashscreen(),
    );
  }
}

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => MainPage()));
    });
    return Scaffold(
      backgroundColor: background,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.movie,
            size: 100,
            color: Colors.white,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Movie Catalogue",
            style: whiteTextFont.copyWith(fontSize: 20),
          )
        ],
      )),
    );
  }
}
