import 'dart:convert';
import 'dart:io';

Future<void> main () async {
  final file = File('assets/text.txt');
  final byteStream = file.openRead();
  final stringStream = byteStream.transform(utf8.decoder);
  await for (var value in stringStream) {
    print(value);
  }
}