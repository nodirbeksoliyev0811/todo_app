import 'package:default_project/models/todo_category.dart';
import 'package:default_project/models/todo_importance.dart';

class ToDoModel {
  final String title;
  final String description;
  final ToDoCategory category;
  final String createdAt;
  final String expiredDate;
  final bool isDone;
  final ToDoImportance toDoImportance;

  ToDoModel(
      {required this.expiredDate,
        required this.description,
        required this.title,
        required this.createdAt,
        required this.category,
        required this.isDone,
        this.toDoImportance = ToDoImportance.normal});

  ToDoModel copyWith({
    String? title,
    String? description,
    ToDoCategory? category,
    String? createdAt,
    String? expiredDate,
    bool? isDone,
    ToDoImportance? toDoImportance,
  }) {
    return ToDoModel(
      expiredDate: expiredDate ?? this.expiredDate,
      description: description ?? this.description,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
      category: category ?? this.category,
      isDone: isDone ?? this.isDone,
      toDoImportance: toDoImportance ?? this.toDoImportance,
    );
  }

  String canAddThis() {
    if (title.isEmpty) return "To Do nomi kiritlimagan";
    if (description.isEmpty) return "Ta'rif kiritilmagan";
    if (category.categoryName.isEmpty) return "Kategoriya tanlang";
    if (expiredDate.isEmpty) return "ToDo muddati xato";

    return "";
  }
}