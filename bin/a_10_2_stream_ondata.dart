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
    print(data); //akan dipelace oleh onData
  });

  listen.onData((data) {
    print('stream subscription ondata: $data');
  });

  listen.onDone(() {
    print('subscription ends here');
  });

  print('done');
}
