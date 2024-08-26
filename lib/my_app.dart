import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<int> students = [
    15,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    85,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: _bottomNavigationBars(),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: ColoredBox(
                  color: Colors.red,
                  child: ListView(

                    scrollDirection: Axis.horizontal,
                    physics: const ScrollPhysics(),
    //                itemExtent: 11,
                    children: [
                      ...students.map(
                        (e) => Text('$e'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
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
            width: 400,
            height: 400,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(35)),
          ),
        ),
//        const Placeholder(),
        Container(
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(35)),
          width: 350,
          height: 350,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(35)),
          width: 150,
          height: 150,
        ),
        const Placeholder(),
      ],
    );
