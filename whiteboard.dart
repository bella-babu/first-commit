import 'package:flutter/material.dart';
import 'package:whiteboardkit/whiteboardkit.dart';



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DrawingController controller;

  @override
  void initState() {
    controller = new DrawingController();
    controller.onChange().listen((draw){
      //do something with it
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Whiteboard(
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }
}
