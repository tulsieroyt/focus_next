import 'package:flutter/material.dart';
import 'package:focus_next/src/features/task/screens/home/widgets/task_card_widget.dart';

class UpcomingTaskSection extends StatelessWidget {
  const UpcomingTaskSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 8),
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (_, __) => Container(
        height: 8,
      ),
      itemBuilder: (context, index) {
        return const TaskCardWidget();
      },
    );
  }
}
