import 'dart:io';

Future<void> main() async {
  try {
    final file = File('assets/long_text.txt');
    final stream = file.openRead();
    stream.listen(
      (data) {
        print(data.length);
      },
    );
  } on Exception catch (error) {
    print(error);
  } finally {
    print('Done');
  }

  // await for (var data in stream) {
  //   print(data.length);
  // }
}
