import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyBackground extends StatelessWidget {
  const BodyBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/background/add project in task list.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        child,
      ],
    );
  }
}
