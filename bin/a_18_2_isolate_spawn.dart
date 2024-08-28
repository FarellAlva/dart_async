import 'dart:io';
import 'dart:isolate';

Future<void> sayHello(String name) async {
  sleep(Duration(seconds: 2));
  print('hello $name');
  Isolate.exit();
}

void main() {
  Isolate.spawn(sayHello, "test");
  print('done');
}//output
//done

//kita belum mendapatkan data di isolate nya

//di materi berikutnya akan dijelaskan cara 
//mendapatkan data dari isolates