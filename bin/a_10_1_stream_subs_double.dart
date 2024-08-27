// ignore_for_file: unused_local_variable

import 'dart:async';

Stream<String> stream() {
  return Stream.periodic(Duration(seconds: 2), (i) {
    if (i % 2 == 0) {
      return '$i adalah genap';
    } else {
      return '$i adalah ganjil';
    }
  });
}

void main() {
  Stream<String> flow = stream();
  StreamSubscription<String> listen = flow.listen((data) {
    print(data);
  });
//tidak bisa di listen 2 kali
//   StreamSubscription<String> listen2 = flow.listen((event) {
//     print(event);  //error
//   });
  print('done');
}
//ini contoh saja, menggunakan periodic (seperti loop )
