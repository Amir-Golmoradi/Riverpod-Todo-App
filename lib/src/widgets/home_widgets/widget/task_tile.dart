import 'package:flutter/material.dart';
import 'package:todoapp/src/widgets/home_widgets/widget/circle_container.dart';
import 'package:todoapp/src/utilities/extension/extention.dart';

import '../../../data/data.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key, required this.tasks, this.onChanged});

  final Task tasks;
  final void Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    final double iconOpacity = tasks.isDone ? 0.3 : 0.6;
    final double backgroundOpacity = tasks.isDone ? 0.3 : 0.5;


    final textDecoration =
        tasks.isDone ? TextDecoration.lineThrough : TextDecoration.none;

    return ListTile(
      leading: CircleContainer(
        color: tasks.taskCategory.color.withOpacity(backgroundOpacity),
        child: Icon(
          tasks.taskCategory.icon,
          color: tasks.taskCategory.color.withOpacity(iconOpacity),
        ),
      ),
      title: Text(
        tasks.title,
        style: context.textTheme.titleLarge?.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          decoration: textDecoration,
          decorationThickness: 2,
        ),
      ),
      subtitle: Text(
        tasks.time,
        style: context.textTheme.titleSmall?.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            decoration: textDecoration),
      ),
      trailing: Checkbox.adaptive(
        value: tasks.isDone,
        onChanged: onChanged,
      ),
    );
  }
}
