import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedPositionPage extends StatefulWidget {
  const AnimatedPositionPage({super.key});

  @override
  State<AnimatedPositionPage> createState() => _AnimatedPositionPageState();
}

class _AnimatedPositionPageState extends State<AnimatedPositionPage> {
  Random randomBox = new Random();
  double top = 0;
  double left = 0;

  Color _color1 = Colors.red;

  Color _color2 = Colors.blue;

  void handleOnTap() {
    setState(() {
      top = randomBox.nextInt(200).toDouble();
      left = randomBox.nextInt(200).toDouble();

      _color1 = Color.fromRGBO(
        randomBox.nextInt(256),
        randomBox.nextInt(256),
        randomBox.nextInt(256),
        .30,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color1,
      child: Center(
        child: SizedBox(
            height: 300,
            width: 300,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: _color1,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey, width: 5.0)),
                ),
                AnimatedPositioned(
                  duration: Duration(seconds: 1),
                  curve: Curves.ease,
                  top: top,
                  left: left,
                  child: GestureDetector(
                    onTap: handleOnTap,
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: _color2,
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
