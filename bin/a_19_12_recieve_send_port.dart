import 'dart:io';
import 'dart:isolate';

//bisa menggunakan class untuk nge pass lebih dari 1 data di stream
//lewat sendport
class Parameter {
  SendPort sendport;
  String name;

  Parameter(this.name, this.sendport);
}

//zendport
Future<void> numbers(Parameter parameter) async {
  for (var i = 0; i < 10; i++) {
    sleep(Duration(seconds: 1));
    parameter.sendport.send('name $i');
  }
  Isolate.exit();
}

//recieve port

void main() {
  final receivePort = ReceivePort();
  Isolate.spawn(numbers, Parameter('test name', receivePort.sendPort));

  receivePort.take(5).listen((message) {
    print(message);
  });

  print('done');
}
