import 'package:flutter/material.dart';

class StateFullApp extends StatefulWidget {
  const StateFullApp({super.key});

  @override
  State<StateFullApp> createState() => _StateFullAppState();
}

class _StateFullAppState extends State<StateFullApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('asas'),
              Text('asdsda'),
            ],
          ),
        ),
        appBar: AppBar(leading: const Icon(Icons.abc_sharp)),
      ),
    );
  }
}
