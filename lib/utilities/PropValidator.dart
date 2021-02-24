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
        if (value != null) {
          return MapEntry('($key)', value);
        } else {
          List<String> prop = key.split("_");
          throw Exception("${prop.join(" ").capitalize()} is required");
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
    value = int.parse(value.toString(),radix: 10);
    if ((value is int) == false) {
      throw Exception("must be number");
    }

    if (value.toString().length != 12) {
      throw Exception("must be greater than 12");
    }

    return value.toString();
  }
}

class GSTValidation extends PropValidation<String> {
  validate(dynamic value) {
    if ((value is String) == false) {
      throw Exception("must be String");
    }

    if (value.toString().length != 15) {
      throw Exception("must be greater than 15");
    }
    return value;
  }
}
