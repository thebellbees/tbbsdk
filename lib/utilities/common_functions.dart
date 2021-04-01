T propertySanitizer<T>(T source, {bool includeZero = false}) {
  if (source is Map) {
    source.removeWhere((key, value) =>
        value == null ||
        value == 'null' ||
        value == 'NULL' ||
        (includeZero && value == null));
    return source;
  } else {
    return source;
  }
}

class ModelHelpers {
  static bool boolParse(v) => v == "true" || v == true || v == 1;
}
