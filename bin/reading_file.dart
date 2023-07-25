import 'dart:io';

Future<void> main() async {
  final file = File('assets/text.txt');
  final contents = await file.readAsString();
  print(contents);
}