// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Todo {

  final int userId;
  final int id;
  final String title;
  final bool completed;


  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> jsonMap) {
    return Todo(
      userId: jsonMap['userId'] as int,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      completed: jsonMap['completed'] as bool,
    );
  }


  @override
  String toString() {
    return 'Todo(userId: $userId\n, id: $id\n, title: $title\n, completed: $completed\n)';
  }

}
