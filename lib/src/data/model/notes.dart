// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../utilities/task_category.dart';

class Task extends Equatable {
  final int? id;
  final String title;
  final String notes;
  final String time;
  final String date;
  final bool isDone;
  final TaskCategories taskCategory;
  const Task({
    this.id,
    required this.title,
    required this.notes,
    required this.time,
    required this.date,
    required this.isDone,
    required this.taskCategory,
  });

  @override
  List<Object?> get props => [
        id!,
        title,
        notes,
        time,
        date,
        isDone,
        taskCategory,
      ];
}
