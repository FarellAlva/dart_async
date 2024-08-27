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
  stream();
  print('done');
}

//stream tidak akan menampilkan apa2 
//harus ada stream subscription

