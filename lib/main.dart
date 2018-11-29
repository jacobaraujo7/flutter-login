import 'package:animation/blocprovider.dart';
import 'package:animation/controller.dart';
import 'package:animation/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        body: BlocProvider<LoginController>(
            bloc: LoginController(), child: LoginWidget()),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.7), BlendMode.overlay),
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.only(bottom: 15, top: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.accessible,
                color: Colors.pink[600],
              ),
              Icon(
                Icons.youtube_searched_for,
                color: Colors.pink[600],
              ),
              Icon(
                Icons.account_box,
                color: Colors.pink[600],
              ),
              Icon(
                Icons.remove_circle_outline,
                color: Colors.pink[600],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
