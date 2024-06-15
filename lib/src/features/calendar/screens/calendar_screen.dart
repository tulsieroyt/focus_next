import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../task/screens/home/widgets/upcoming_section.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  List<String> tabs = ['All', 'Done', 'In Progress', 'Up coming'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 36),
        const AppBarSection(title: 'Today\'s Task',),
        const SizedBox(height: 24),
        const DateSection(),
        const SizedBox(height: 36),
        SizedBox(
          height: 30,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: tabs.length,
            separatorBuilder: (_, __) => const SizedBox(width: 10),
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == 0
                    ? Colors.deepPurple
                    : Colors.deepPurpleAccent.withOpacity(.2),
              ),
              height: 30,
              child: Center(
                child: Text(
                  tabs[index],
                  style: TextStyle(
                    color: index == 0 ? Colors.white : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: UpcomingTaskSection(),
        )
      ],
    );
  }
}

class DateSection extends StatelessWidget {
  const DateSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) => Container(
          height: 120,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: index == 2 ? Colors.deepPurpleAccent : Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'May',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: index == 2 ? Colors.white : Colors.black,
                ),
              ),
              Text(
                '25',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: index == 2 ? Colors.white : Colors.black,
                ),
              ),
              Text(
                'Sat',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: index == 2 ? Colors.white : Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(CupertinoIcons.back),
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const Icon(Icons.notifications)
        ],
      ),
    );
  }
}
