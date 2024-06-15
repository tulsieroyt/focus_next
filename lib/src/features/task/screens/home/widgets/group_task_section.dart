import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GroupTaskSection extends StatelessWidget {
  const GroupTaskSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 8),
      physics: const BouncingScrollPhysics(),
      itemCount: 4,
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) => Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red.withOpacity(.2),
                ),
                child: const Icon(
                  Icons.shopping_bag_rounded,
                  color: Colors.redAccent,
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Personal Project',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '26 Tasks',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
              CircularPercentIndicator(
                radius: 30,
                percent: .6,
                center: const Text(
                  '60%',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.redAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
