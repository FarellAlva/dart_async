import 'a_6_0_future_method.dart';

Future<String> firstName() async {
  return 'test';
}

Future<String> lastName() async {
  return 'test_2';
}

Future<String> fullname(String name) async {
  return 'complete $name';
}

Future<void> say() async {
  try {
    String first = await firstName();
    String last = await lastName();
    String hello = await sayHello('$first $last');
    print(hello);
  } catch (e) {
    print(e);
  } finally {
    print('done');
  }
}

void main() {
  say();
}
