Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print('test delayed');
  });
}

void main() {
  hello();
  print('main thread ui');
}
