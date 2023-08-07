//Cancelling a Stream
import 'dart:async';
import 'dart:io';

void main() {
  final file = File('assets/long_text.txt');
  final stream = file.openRead();
  StreamSubscription<List<int>>? subscription;
  subscription = stream.listen(
    (data) {
      print(data.length);
      subscription?.cancel();
    },
    cancelOnError: true,
    onDone: () {
      print('Done');
    }
  );

}