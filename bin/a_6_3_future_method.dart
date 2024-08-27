Future<String> sayHello(String name) {
//   return Future.delayed(Duration(seconds: 1), () {
//     //return 'hello $name';
//     throw Error();
//   });

  return Future.error(Exception('error'));
}

void main() {
  sayHello('test').then((value) {
    print(value);
  }).catchError((error) {
    print('error ${error.message}');
  });

  print("main thread go here");
}
// .cathError berbeda dengan .onError, yaitu melakukan sesuatu
//(melemparkan exception error seperti try and catch)
//sedangkan kalau .onError mengubah dan memberikan data pengganti

