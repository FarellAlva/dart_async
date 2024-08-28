Stream<int> asyncNumber() async* {
  for (int i = 0; i < 10; i++) {
    yield i;
  }
}

void main() {
  asyncNumber().listen((element) {
    print(element);
  });

  print('done');
}
 //membuat stream dengan async*

 
//yang sync menjadi iterable, 
// jika async menjadi stream