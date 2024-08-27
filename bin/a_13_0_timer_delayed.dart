import 'dart:async';

void main() {
  Timer(Duration(seconds: 2), () {
    print('helo from timer');
  });
  print('done');
}
