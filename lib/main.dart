import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chapter_3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Chapter_3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
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
            Text("YUN UNIVERSITY",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
                height: 2,  
                fontFamily: "Courier",
                background: Paint()..color=Color.fromARGB(255, 250, 250, 248),
                decoration:TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed
              ),
            ),
          
            DefaultTextStyle(
              style: TextStyle(
                color:Color.fromARGB(255, 249, 19, 2),
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Hello world"),
                  Text("Welcome to YNU"),
                  Text("My name is xiruGao",
                    style: TextStyle(
                      inherit: false,
                      color: Color.fromARGB(255, 248, 228, 3)
                    ),
                  ),
                ],
              ),
            ),

          Image.network(
            "https://upload.shejihz.com/2019/03/beb8717c1e6d7b8697274d1e5633fdcc.jpg?x-oss-process=image/resize,m_fill,w_1440,h_1418#",
            width: 300.0,
          )

          ],
        ),
      ),
    );
  }
}