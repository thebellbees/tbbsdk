import 'package:flutter_test/flutter_test.dart';

Future<void> main() async {
  test('adds one to input values', () {
    final body = {
      'term_slug': "category".toString(),
      'km': "kilometer".toString(),
    };

    body.addAll({"newEntries": ""});

    print(body);
  });
}
