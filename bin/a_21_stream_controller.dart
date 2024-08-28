import 'dart:async';

void longRunningStream(void Function(String) onNext,
    void Function(Error?) onError, void Function() onDone) {
  //contoh function callback

  var listen = Stream.periodic(Duration(seconds: 1)).take(10).listen((event) {
    onNext('test');
  });

  listen.onError((error) => onError(error));
  listen.onDone(() => onDone());
} //terlalu banyak callback functionya

Stream<String> runLongRunningStream() {
  StreamController<String> streamController = StreamController<String>();
  longRunningStream((event) {
    streamController.add(event);
  }, (error) {
    streamController.addError(error!);
  }, () {
    streamController.close();
  });
  return streamController.stream;
}

void main() {
  runLongRunningStream().listen((event) {
    print(event);
  });
  print('done');
}
