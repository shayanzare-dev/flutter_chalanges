import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: _bottomNavigationBars(),
          body: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Text('shayan zare'),
                  _stack(),
                ],
              ))),
    );
  }
}

Widget _bottomNavigationBars() =>
    BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.restart_alt), label: 'restart'),
      BottomNavigationBarItem(icon: Icon(Icons.login), label: 'login'),
      BottomNavigationBarItem(
          icon: Icon(Icons.accessible_rounded), label: 'accesible')
    ]);

Widget _stack() => Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          width: double.infinity,
          child: Container(
            color: Colors.red,
            width: 400,
            height: 400,
          ),
        ),
        Container(
          color: Colors.black,
          width: 350,
          height: 350,
        ),
        Container(
          color: Colors.greenAccent,
          width: 150,
          height: 150,
        ),
      ],
    );
