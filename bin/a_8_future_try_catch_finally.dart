Future<String> sayHello(name) {
  // return Future.value('hello $name'); //test kalau sukses
  return Future.error(Exception(
      'awdbua')); //kalau ngak ada (Exception(' ')) //maka dia akan ambil exception default console
}

void main() {
  sayHello('test').then((value) => print(value)).catchError((error) {
    print('error with ${error.message}');
  }).whenComplete(() => print('alldone'));
}
 

 //jadi ini mirip try catch finally, jadi setelah semua dijalankan, 
 //mau sukses apa tidak selalu dijalankan finallynya (.whenComplete)