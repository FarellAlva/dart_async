// ignore_for_file: depend_on_referenced_packages

import 'package:async/async.dart';

Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    print('calculate get data');
    return 'get data';
  });
}

void main() async {
  final asyncMemoizer = AsyncMemoizer<String>();

  String result = await asyncMemoizer.runOnce(() => getData());
  print(result);

  String result2 = await asyncMemoizer.runOnce(() => getData());
  print(result2);
}
