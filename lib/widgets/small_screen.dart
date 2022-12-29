import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          color: Colors.purple,
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          color: Colors.pink,
        ),
      ),
    ]);
  }
}
