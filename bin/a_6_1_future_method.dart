Future<String> hello(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    return 'hello $name';
  });
}

void main() {
  hello('farell').then((value) {
    print(value);
  });
  print('main thread ');
}

// .then menerima dan bekerja dengan nilai 
//yang dikembalikan oleh Future.

// .then bisa digunakan untuk mengganti/menambah elemen
