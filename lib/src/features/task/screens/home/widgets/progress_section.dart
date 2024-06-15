import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../constraints/colors.dart';

class ProgressSection extends StatelessWidget {
  const ProgressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: FNColors.linerGradient,
      ),
      child: Stack(
        children: [
          const Positioned(
            left: 16,
            top: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Progress',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '5 of 9 task completed',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 16,
            bottom: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: const Text(
                'See All',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Positioned(
            right: 24,
            bottom: 20,
            child: CircularPercentIndicator(
              radius: 45,
              lineWidth: 10,
              percent: .8,
              center: const Text(
                '40%',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.grey,
              progressColor: Colors.white,
              circularStrokeCap: CircularStrokeCap.round,
            ),
          )
        ],
      ),
    );
  }
}