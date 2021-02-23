abstract class PropValidation<T> {
  T validate(dynamic value);
}

class AadharValidation extends PropValidation<dynamic> {
  @override
  validate(dynamic value) {
    value = int.parse(value.toString());
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
