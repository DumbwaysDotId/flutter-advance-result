import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void Add() {
    setState(() {
      count++;
    });
  }

  void Less() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            count.toString(),
            style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: Less, child: Text('Less')),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: Add, child: Text('Add')),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black45),
              onPressed: (() {
                Navigator.pop(context);
              }),
              child: Text('back'))
        ],
      )),
    );
  }
}
