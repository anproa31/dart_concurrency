import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../model/todo.dart';

Future<void> main() async {
  final url = 'https://jsonplaceholder.typicode.com/todos/1';
  final parseUrl = Uri.parse(url);
  final response = await http.get(parseUrl);
  final statusCode = response.statusCode;
  if (statusCode != 200) {
    throw HttpException('Request failed with status code $statusCode');
  }

  final jsonString = response.body;
  dynamic jsonMap = json.decode(jsonString);

  final todo = Todo.fromJson(jsonMap);
  print(todo);
}
