Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 1), () {
    return 'hello $name';
  });
}

void main() {
  sayHello('hi').whenComplete(() {
    print('complete');
  });
  print('main thread here');
}

// .whenComplete tidak menerima nilai apa pun, 
// sehingga tidak dapat bekerja dengan nilai 
//yang dikembalikan oleh Future.

//jadi bisa dibilang .whenComplete itu adalah
//cara penanganan future secara default

//mau error mau tidak, akan dieksekusi


//kode dibawah ini salah: 
// Future<String> sayHello(String name) {
//   return Future.delayed(Duration(seconds: 1), () {
//     return 'hello $name';
//   });
// }

// void main() {
//   sayHello('hi').whenComplete((value) {
//     print(value);
//   });
//   print('main thread here');
// }
// .whenComplete error, sedangkan jika memakai .then tidak