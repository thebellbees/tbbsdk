import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tbbsdk/models/services/TBBServiceItem.dart';

Future<void> main() async {
  test('adds one to input values', () {
    var jsonString = [
      {
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
      },
      {
        "id": 2,
        "service_id": 2,
        "latitude": "11.41023300",
        "longitude": "78.08518100",
        "available_around_with_km": 60,
        "reach_time": 60,
        "created_at": "2021-01-06T15:33:37.000Z",
        "updated_at": "2021-01-06T15:33:37.000Z",
        "deleted_at": null,
        "distance": 26.53457438914231,
        "sr_service": {
          "id": 2,
          "store_id": "27a56fd0-45b6-11eb-8c23-adec0f335487",
          "name": "Plumber",
          "description":
              "install and repair pipes that supply water and gas to, as well as carry waste away from, homes and businesses. They also install plumbing fixtures such as bathtubs, sinks, and toilets, and appliances, including dishwashers and washing machines. Experience",
          "response_minute": 60,
          "created_at": "2021-01-06T15:18:16.000Z",
          "updated_at": "2021-01-06T15:18:16.000Z",
          "deleted_at": null,
          "sr_term_taxonomy_associations": []
        }
      },
      {
        "id": 3,
        "service_id": 3,
        "latitude": "11.41001300",
        "longitude": "78.08497100",
        "available_around_with_km": 60,
        "reach_time": 60,
        "created_at": "2021-01-06T15:33:37.000Z",
        "updated_at": "2021-01-06T15:33:37.000Z",
        "deleted_at": null,
        "distance": 26.530378671853764,
        "sr_service": {
          "id": 3,
          "store_id": "27a56fd0-45b6-11eb-8c23-adec0f335487",
          "name": "House Cleaning",
          "description":
              "The Residential Cleaner will be responsible for cleaning and maintaining the household and its surrounds. Your responsibilities will include sweeping, washing, dusting, mopping, vacuuming, scrubbing, and sanitizing all areas and surfaces. You should also ",
          "response_minute": 60,
          "created_at": "2021-01-06T15:18:16.000Z",
          "updated_at": "2021-01-06T15:18:16.000Z",
          "deleted_at": null,
          "sr_term_taxonomy_associations": []
        }
      },
      {
        "id": 4,
        "service_id": 4,
        "latitude": "11.41026300",
        "longitude": "78.08518100",
        "available_around_with_km": 60,
        "reach_time": 60,
        "created_at": "2021-01-06T15:33:37.000Z",
        "updated_at": "2021-01-06T15:33:37.000Z",
        "deleted_at": null,
        "distance": 26.537142089848555,
        "sr_service": {
          "id": 4,
          "store_id": "27a56fd0-45b6-11eb-8c23-adec0f335487",
          "name": "Garden Service",
          "description":
              "Services also include basic gardening tasks, such as planting perennials, annuals, shrubs, and trees, lawn and garden maintenance services like mowing, pruning, and fertilizing, as well as disposal services, like removing brush and other debris.",
          "response_minute": 60,
          "created_at": "2021-01-06T15:18:16.000Z",
          "updated_at": "2021-01-06T15:18:16.000Z",
          "deleted_at": null,
          "sr_term_taxonomy_associations": []
        }
      }
    ];

    var convertedData =
        jsonString.map((e) => jsonDecode(jsonEncode(e))).toList();

    List<TBBServiceItem> serviceItems =
        TBBServiceItem.listFromJson(convertedData);
    print(serviceItems.last);
  });
}
