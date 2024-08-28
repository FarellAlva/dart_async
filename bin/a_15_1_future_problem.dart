import 'a_6_0_future_method.dart';

Future<String> firstName() async {
  return 'test';
}

Future<String> lastName() async {
  return 'test_2';
}
//tanpa async
// Future<String> lastName() {
//   return Future.value('test_2');
// }

Future<String> fullname(String name) async {
  return 'complete $name';
}

void main() {
  firstName().then((firstName) {
    return lastName().then((lastName) {
      var fullName = '$firstName $lastName';
      return sayHello(fullName);
    });
  }).then((value) => print(value)); //terlalu ribet ketika
  //ingin mengambil data sukses dari future
}
