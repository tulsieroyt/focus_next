import 'package:flutter/material.dart';

import '../../constraints/colors.dart';

class SeeAllSection extends StatelessWidget {
  const SeeAllSection({
    super.key,
    required this.sectionHeading,
    required this.endButton,
  });

  final String sectionHeading;
  final bool endButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionHeading,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        endButton
            ? Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: FNColors.primaryColor.withOpacity(.8)),
                child: const Row(
                  children: [
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                  ],
                ),
              )
            : Container()
      ],
    );
  }
}
