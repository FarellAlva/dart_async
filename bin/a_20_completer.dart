import 'dart:async';

void longRunningTask(
    void Function(String) onDone, void Function(Object?) onError) {
  //library orang lain

  Future.delayed(Duration(seconds: 5))
      .onError((error, stackTrace) => onError(error))
      .then((value) => onDone('task completed'));
}

//gunakan completer saja
Future<String> runLongRunningTask() {
  Completer<String> completer = Completer();

  longRunningTask((data) {
    completer.complete(data);
  }, (error) {
    completer.completeError(error!);
  });
  return completer.future;
}

void main() {
  runLongRunningTask().then((value) => print(value));
}
