library flutter_greeting_package;

import 'package:flutter/services.dart';

/// A Greeting.
class Greeting {
  /// Returns  HI [value].
  String sayHi(String value) => "Hi ${value}";

  static const platform = MethodChannel('com.Greeting.channelname');

  static Future<dynamic> someMethod(args) async {
  try {
  final result = await platform.invokeMethod('Greeting', args);
  return result;
  } on PlatformException catch (e) {
  // Handle error
  print("Failed to call method: '${e.message}'");
  }
  }

}