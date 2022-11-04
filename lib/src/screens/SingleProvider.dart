import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingleProvider extends StatelessWidget {
  const SingleProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('single provider'),
    );
  }
}
