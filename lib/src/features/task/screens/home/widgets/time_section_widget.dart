import 'package:flutter/material.dart';

class TimeSectionWidget extends StatelessWidget {
  const TimeSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(
              Icons.lock_clock_outlined,
              size: 20,
            ),
            SizedBox(width: 5),
            Text(
              '12 May 2024',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        Badge(
          label: Text('5'),
          child: Icon(
            Icons.notifications,
            size: 28,
          ),
        )
      ],
    );
  }
}
