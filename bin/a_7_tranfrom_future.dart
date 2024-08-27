Future<String> transform() {
  return Future.value('test123 www');
}

void main() {
  transform().then((value) {
    return value.split(' '); //jadi list, Future<List<String>>
  }).then((value) {
    return value.reversed; //jadi iterable, Future<Iterable<String>>
  }).then((value) {
    return value.map((e) => e.toUpperCase()); //Future<Iterable<String>>
  }).then((value) => print(value));

  print('main thread ');
}
