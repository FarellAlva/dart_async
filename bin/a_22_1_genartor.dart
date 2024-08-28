Iterable<int> syncNumber() sync* {
  for (int i = 0; i < 10; i++) {
    yield i;
  }
}

void main() {
  syncNumber().forEach((element) {
    print(element);
  });
}

//yang sync menjadi iterable, 
// jika async menjadi stream