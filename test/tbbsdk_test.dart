import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tbbsdk/models/TBBTerm.dart';
import 'package:tbbsdk/models/account/TBBAddress.dart';

void main() {
  test('Counter increments smoke test', () async {
    print(TBBAddress.fromJson({"is_default": "true"}).toJson());
  });
}
