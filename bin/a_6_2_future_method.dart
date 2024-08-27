Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 1), () {
    //return 'hello $name';
    throw Error();
  });
}

void main() {
  sayHello('test').onError((error, stackTrace) {
    return 'fallback';
  }).then((value) {
    print(value);
  });

  print("main thread go here");
}
// .onError bergungsi untuk ketika future dipanggil
//dan ada error, maka onError akan berperan memberikan 
//(mengubah) nilai pengganti / fallback jika failed