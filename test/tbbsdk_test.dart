import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  test('adds one to input values', () async {
    print("hi");
    final pdf =
        await http.get("http://www.africau.edu/images/default/sample.pdf");
    print(pdf.bodyBytes);

    // print(convertedPdf);
  });
}
