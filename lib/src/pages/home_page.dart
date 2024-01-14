import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/src/config/routes/route_location.dart';
import 'package:todoapp/src/data/data.dart';
import 'package:todoapp/src/widgets/widgets.dart';
import 'package:todoapp/src/utilities/utils.dart';

class HomePage extends StatelessWidget {
  static HomePage builder(BuildContext context, GoRouterState state) =>
      const HomePage();

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // reference of our extensions
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.32,
                width: deviceSize.width,
                color: colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: "Sep 12 1999",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    DisplayWhiteText(
                      text: "My Note Pad",
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 160,
            right: 0,
            left: 0,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DisplayListOfTask(
                    task: [
                      Task(
                        title: 'title',
                        notes: 'note',
                        time: '10:00 pm',
                        date: '12 aug',
                        isDone: false,
                        taskCategory: TaskCategories.education,
                      ),
                      Task(
                        title: 'title 2',
                        notes: 'note',
                        time: '12:00 pm',
                        date: '16 oct',
                        isDone: false,
                        taskCategory: TaskCategories.social,
                      ),
                    ],
                  ),
                  const Gap(20),
                  Text(
                    "Completed Notes",
                    style: context.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  const Gap(20),
                  const DisplayListOfTask(
                    task: [
                      Task(
                        title: 'title',
                        notes: '',
                        time: '10:00 pm',
                        date: '12 aug',
                        isDone: true,
                        taskCategory: TaskCategories.education,
                      ),
                      Task(
                        title: 'title 2',
                        notes: '',
                        time: '12:00 pm',
                        date: '16 oct',
                        isDone: true,
                        taskCategory: TaskCategories.social,
                      ),
                    ],
                    isCompletedNote: true,
                  ),
                  const Gap(20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () => context.push(RouterLocation.createTask),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          deviceSize.width * 0.8,
                          deviceSize.height * 0.066,
                        ),
                      ),
                      child: const DisplayWhiteText(
                        text: "Add New Task",
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
