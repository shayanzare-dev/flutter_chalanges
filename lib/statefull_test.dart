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
        body: Column(
          children: [
            Container(
              color: Colors.greenAccent,
              width: 150,
              height: 150,
            ),
          ],
        ),
        appBar: AppBar(leading: const Icon(Icons.abc_sharp)),
      ),
    );
  }
}
