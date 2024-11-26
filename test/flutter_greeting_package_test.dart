import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_greeting_package/flutter_greeting_package.dart';

void main() {
  test('Say Hi to someone', () {
    final greeting = Greeting();
    expect(greeting.sayHi("esraa"), "Hi esraa");
    expect(greeting.sayHi("mostafa"), "Hi mostafa");
    expect(greeting.sayHi("hisham"), "Hi hisham");
  });
}
