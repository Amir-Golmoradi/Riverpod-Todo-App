import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/src/utilities/extension/extention.dart';
import 'package:todoapp/src/widgets/create_task_widgets/widgets/common_text_field.dart';
import 'package:todoapp/src/widgets/widgets.dart';

class CreateTaskPage extends StatelessWidget {
  static CreateTaskPage builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const CreateTaskPage();

  const CreateTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: DisplayWhiteText(
          text: 'Add New Task',
          fontSize: context.textTheme.headlineMedium?.fontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CommonTextField(
              hintText: 'Task Title',
              title: 'Task Title',
            ),
            const Gap(16),
            Row(
              children: [
                Expanded(
                  child: CommonTextField(
                    hintText: 'Sep,12',
                    title: 'Date',
                    readOnly: true,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.calendar),
                    ),
                  ),
                ),
                const Gap(10),
                Expanded(
                  child: CommonTextField(
                    hintText: '8:30',
                    title: 'Time',
                    readOnly: true,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.clock),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            const CommonTextField(
              hintText: 'Description',
              title: 'Note',
              maxLines: 8,
            ),
            const Gap(20),
            ElevatedButton(
              onPressed: () {},
              child: const DisplayWhiteText(
                text: 'Save',
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
