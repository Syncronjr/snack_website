import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          color: Colors.green,
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          color: Colors.yellow,
        ),
      ),
    ]);
  }
}
