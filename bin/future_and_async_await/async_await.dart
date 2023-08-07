//Getting result from a future
Future<void> main() async {
// Example 1
  print('Before the furture');
  final value = await Future<int>.delayed(Duration(seconds: 2), () => 42);
  print('Value: $value');
  print('After the future');

// Example 2
  print('Before the furture');
  // ignore: unused_local_variable
  final myFuture = Future<int>.delayed(
    Duration(seconds: 2),
    () => 43,
  )
      .then(
        (value) => print('Value: $value'),
      )
      .catchError(
        (error) => print('Error: $error'),
      )
      .whenComplete(
        () => print('Done!'),
      );
  print('After the future');
}
