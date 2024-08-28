import 'package:test/test.dart';

Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => 'farell alvaro');
}

void main() {
  test('future matcher', () {
    //ini menggunakan matcher
    //kurang direkomendasikan karena agak sulit

    final name = getName();
    expect(name, completion(equals('farell alvaro')));
  });
  test('future test', () async {
    //lebih direkomendasikan
    final name = await getName();
    expect(name, 'farell alvaro');
  });
}
