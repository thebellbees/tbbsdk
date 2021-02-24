import 'package:tbbsdk/tbb_error.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

Future<Map<String, dynamic>> validatePropsFunc(Map json,
    {List<String> excludeNull,
    List<String> excludeValidator,
    Map<String, PropValidation> validators,
    bool checkNull = false,
    bool validate = false}) async {
  if (excludeNull == null) excludeNull = [];
  if (excludeValidator == null) excludeValidator = [];

  if (checkNull) {
    //checking null values
    json.map((key, value) {
      if (excludeNull.contains(key) == false) {
        if (value != null && value.toString().isNotEmpty) {
          return MapEntry('($key)', value);
        } else {
          List<String> prop = key.split("_");
          throw TBBError(message: "${prop.join(" ").capitalize()} is required");
        }
      } else {
        return MapEntry('($key)', value);
      }
    });
  }

  if (validate) {
    json.map((key, value) {
      if (value != null && excludeValidator.contains(key) == false) {
        if (validators.containsKey(key)) {
          dynamic val = validators[key].validate(value);
          return MapEntry('($key)', val);
        } else {
          return MapEntry('($key)', value);
        }
      } else {
        return MapEntry('($key)', value);
      }
    });
  }

  return json;
}

abstract class PropValidation<T> {
  T validate(dynamic value);
}

class AadharValidation extends PropValidation<dynamic> {
  @override
  validate(dynamic value) {
    if (value != null && value.toString().isNotEmpty) {
      value = int.parse(value.toString(), radix: 10);
      if ((value is int) == false) {
        throw TBBError(message: "aadhar must be number");
      }

      if (value.toString().length != 12) {
        throw TBBError(message: "aadhar must be greater than 12");
      }
    } else {
      throw TBBError(message: "aadhar must be number");
    }

    return value.toString();
  }
}

class GSTValidation extends PropValidation<String> {
  validate(dynamic value) {
    if ((value is String) == false) {
      throw TBBError(message: "gst number must be String");
    }

    if (value.toString().length != 15) {
      throw TBBError(message: "gst number must be greater than 15");
    }
    return value;
  }
}

class UdyogAadharValidation extends PropValidation<String> {
  validate(dynamic value) {
    if ((value is String) == false) {
      throw TBBError(message: "udyog aadhar must be String");
    }

    if (value.toString().length != 12) {
      throw TBBError(message: "udyog aadhar must be greater than 15");
    }
    return value;
  }
}
