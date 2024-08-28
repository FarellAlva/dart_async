// ignore_for_file: depend_on_referenced_packages

import 'package:async/async.dart';

Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    print('calculate get data');
    return 'get data';
  });
}

void main() async {
  final asyncCache = AsyncCache<String>(Duration(seconds: 10));

  String result = await asyncCache.fetch(() => getData());
  print(result);

  String result2 = await asyncCache.fetch(() => getData());
  print(result2);
}
