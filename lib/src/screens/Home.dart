import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'Counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: ElevatedButton(
          onPressed: (() {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CounterPage();
            }));
          }),
          child: Text("Click me"),
        )),
      ),
    );
  }
}
