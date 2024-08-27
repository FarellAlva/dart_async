Future<String> sayHello(String name) async {
  return "hello $name";
}

void main() {
  sayHello('world').then((value) => print(value));

  print('ok done');
}
