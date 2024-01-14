import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/src/widgets/home_widgets/widget/circle_container.dart';
import 'package:todoapp/src/utilities/extension/extention.dart';

import '../../../data/data.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          CircleContainer(
            color: task.taskCategory.color,
            child: Icon(task.taskCategory.icon),
          ),
          const Gap(20),
          Text(
            task.title,
            style: style.titleMedium?.copyWith(
              fontSize: 20,
            ),
          ),
          Text(
            task.time,
            style: style.titleMedium?.copyWith(
              fontSize: 20,
            ),
          ),
          const Gap(16),
          Visibility(
            visible: !task.isDone,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'task to be completed on ${task.date}',
                  style: style.headlineSmall?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  Icons.check_box,
                  color: task.taskCategory.color,
                ),
              ],
            ),
          ),
          const Gap(15),
          Divider(
            thickness: 2,
            color: task.taskCategory.color,
          ),
          const Gap(13),
          Text(
            task.notes.isEmpty
                ? 'There is no additional note for this task'
                : task.notes,
          ),
          const Gap(16),
          Visibility(
            visible: task.isDone,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Task completed ',
                  style: style.headlineSmall?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Icon(
                  Icons.check_box,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
