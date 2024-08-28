import 'dart:io';
import 'dart:isolate';

//zendport
Future<void> numbers(SendPort sendPort) async {
  for (var i = 0; i < 10; i++) {
    sleep(Duration(seconds: 1));
    sendPort.send(i);
  }
  Isolate.exit();
}

//recieve port

void main() {
  final receivePort = ReceivePort();
  Isolate.spawn(numbers, receivePort.sendPort);

  receivePort.listen((message) {
    print(message);
  });

  print('done');
}
