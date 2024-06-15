import 'package:flutter/material.dart';
class WelcomeSection extends StatelessWidget {
  const WelcomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi, Tulsie Barman',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        Text(
          'Welcome to the FocusNext',
          style: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 14, color: Colors.black),
        )
      ],
    );
  }
}