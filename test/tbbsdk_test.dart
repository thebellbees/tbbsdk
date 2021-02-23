import 'package:flutter_test/flutter_test.dart';
import 'package:tbbsdk/models/TBBStore.dart';

Future<void> main() async {
  test('adds one to input values', () async {
    TBBStore store = new TBBStore(
        storeId: "1",
        aadhar: "123456789012",
        storeType: "1",
        email: "1",
        pincode: "1",
        proprietorName: "1",
        enabled: true,
        udyogAadhar: "12",
        createdAt: "12",
        // customer: TBBCustomer(),
        deletedAt: "12",
        updatedAt: "212",
        gst: "12345678901234",
        ownerId: "1",
        city: "1",
        phone: "1",
        state: "1",
        company: "1",
        address: "1",
        category: "1",
        certificate: "1",
        country: "1");

    print(await store.validateProps(excludeNull: ["customer"]));

    // print(convertedPdf);
  });
}
