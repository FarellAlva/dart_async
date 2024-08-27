Stream<int> numbers() {
  return Stream.fromIterable([1, 2, 3, 4, 5]);
}

void main() {
  Future<int> total =
      numbers().fold(0, (previous, element) => previous + element);

// Iterasi pertama: 0 + 1 = 1
// Iterasi kedua: 1 + 2 = 3
// Iterasi ketiga: 3 + 3 = 6
// Iterasi keempat: 6 + 4 = 10
// Iterasi kelima: 10 + 5 = 15

  total.then((value) => print('total is $value'));
}
