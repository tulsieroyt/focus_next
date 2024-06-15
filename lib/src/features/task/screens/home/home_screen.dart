import 'package:flutter/material.dart';

import '../../../../common/widgets/see_all_section.dart';
import 'widgets/group_task_section.dart';
import 'widgets/progress_section.dart';
import 'widgets/time_section_widget.dart';
import 'widgets/upcoming_section.dart';
import 'widgets/welcome_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            TimeSectionWidget(),
            SizedBox(height: 36),
            WelcomeSection(),
            SizedBox(height: 16),
            ProgressSection(),
            SizedBox(height: 36),
            SeeAllSection(
              sectionHeading: 'Upcoming Task',
              endButton: true,
            ),
            UpcomingTaskSection(),
            SizedBox(height: 36),
            SeeAllSection(
              sectionHeading: 'Group Task',
              endButton: true,
            ),
            GroupTaskSection()
          ],
        ),
      ),
    );
  }
}
