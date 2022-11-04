import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double heightContainer = 100.0;
  double widthContainer = 100.0;
  Random random = new Random();
  Color _color = Colors.red;

  void handleOnTap() {
    double randomNumberHeight = random.nextInt(500).toDouble();
    double randomNumberWidth = random.nextInt(250).toDouble();
    setState(() {
      heightContainer = randomNumberHeight + 100.0;
      widthContainer = randomNumberWidth + 100.0;

      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: GestureDetector(
        onTap: handleOnTap,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 2000),
          width: widthContainer,
          height: heightContainer,
          decoration: BoxDecoration(
              color: _color, borderRadius: BorderRadius.circular(8)),
          curve: Curves.elasticOut,
          alignment:
              heightContainer >= 300 ? Alignment.topCenter : Alignment.center,
          child: Text(
            'Dumbways',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
          ),
        ),
      )),
    );
  }
}
