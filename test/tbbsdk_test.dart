import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tbbsdk/models/TBBTerm.dart';

void main() {
  test('Counter increments smoke test', () async {
    Map<String, dynamic> json = {
      'hy_terms': [
        {
          "name": "data_1",
          "slug": "data_1",
          "icon": "data_1",
        }
      ]
    };

    TBBTerm term = new TBBTerm.fromJson(json);

    print(term.terms);
    print(term.toJson());
  });
}
