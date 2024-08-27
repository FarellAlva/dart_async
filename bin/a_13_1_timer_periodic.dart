import 'dart:async';

void main() {
  Timer.periodic(Duration(seconds: 2), (timer) {
    print('helo from timer ke ${timer.tick}');

    if (timer.tick >= 5) {
      timer.cancel();
    }
  });
  print('done');
}
