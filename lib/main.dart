
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         primarySwatch: Colors.blue,
      ),
      title: "StateFul",
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  int myCount = 0;

  void incrementCount(){
    setState(() {
      myCount++;
    });
  }

  void decrementCount(){
    setState(() {
      myCount--;
    });
  }

  void resetCount(){
    setState(() {
      myCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Flutter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "$myCount",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RaisedButton(
              onPressed: incrementCount,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              child: Text(
                "Increment count",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
              splashColor: Colors.cyan,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: decrementCount,
                child: Text(
                  "Decrement count",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                splashColor: Colors.cyan,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: resetCount,
                child: Text(
                  "Reset count",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                splashColor: Colors.cyan,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



