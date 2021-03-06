import 'package:flutter/material.dart';
import 'whiteboard.dart';
import 'text_editor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Start the app with the "/" named route. In this case, the app starts
  // on the FirstScreen widget.
  initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => TextEditor(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/second': (context) => MyHomePage(),
  },
      title: 'Medium-like Text Editor',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.teal,
        fontFamily: 'Georgia',  
      ),
      debugShowCheckedModeBanner: false,
     
    );
  }
}