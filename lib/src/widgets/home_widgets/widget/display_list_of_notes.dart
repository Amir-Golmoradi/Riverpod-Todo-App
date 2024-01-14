import 'package:flutter/material.dart';
import 'package:todoapp/src/data/data.dart';
import 'package:todoapp/src/utilities/extension/extention.dart';
import 'package:todoapp/src/widgets/widgets.dart';

class DisplayListOfTask extends StatelessWidget {
  const DisplayListOfTask({
    Key? key,
    required this.task,
    this.isCompletedNote = false,
  }) : super(key: key);

  final List<Task> task;
  final bool isCompletedNote;
  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    // responsive trick
    final height =
        isCompletedNote ? deviceSize.height * 0.25 : deviceSize.height * 0.3;
    final emptyNoteMessage = isCompletedNote
        ? 'There is no completed Note yet'
        : 'There is no task to do ';

    return CommonContainer(
      height: height,
      child: task.isEmpty
          ? Center(
              child: Text(
                emptyNoteMessage,
                style: context.textTheme.displaySmall?.copyWith(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          : ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: task.length,
              itemBuilder: (ctx, i) {
                final tasks = task[i];
                return GestureDetector(
                  onLongPress: () {
                    // delete Task
                  },
                  onTap: () async {
                    // show task details

                    await showModalBottomSheet(
                      context: ctx,
                      builder: (ctx) {
                        return TaskDetails(
                          task: tasks,
                        );
                      },
                    );
                  },
                  child: TaskTile(
                    tasks: tasks,
                    onChanged: (bool) {},
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                thickness: 2,
                height: 0,
              ),
            ),
    );
  }
}
