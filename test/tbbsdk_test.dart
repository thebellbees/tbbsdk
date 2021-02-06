import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tbbsdk/models/services/TBBServiceItem.dart';

Future<void> main() async {
  test('adds one to input values', () {
    var jsonString = {
      "id": 1,
      "service_id": 1,
      "latitude": "11.41003300",
      "longitude": "78.08498100",
      "available_around_with_km": 60,
      "reach_time": 60,
      "created_at": "2021-01-06T15:33:37.000Z",
      "updated_at": "2021-01-06T15:33:37.000Z",
      "deleted_at": null,
      "distance": 26.53139183969731,
      "sr_service": {
        "id": 1,
        "store_id": "27a56fd0-45b6-11eb-8c23-adec0f335487",
        "name": "Home Electrician",
        "description":
            "Install, maintain and repair electrical control, wiring, and lighting systems. Read technical diagrams and blueprints. Perform general electrical maintenance. Inspect transformers and circuit breakers and other electrical components.",
        "response_minute": 60,
        "created_at": "2021-01-06T15:18:16.000Z",
        "updated_at": "2021-01-06T15:18:16.000Z",
        "deleted_at": null,
        "sr_term_taxonomy_associations": []
      }
    };

    var convertedData = jsonDecode(jsonEncode(jsonString));

    TBBServiceItem serviceItem = new TBBServiceItem.fromJson(convertedData);
    print(serviceItem);
  });
}
