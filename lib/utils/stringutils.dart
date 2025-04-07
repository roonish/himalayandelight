import 'dart:convert';
import 'dart:math';

class StringUtil {
  static bool isNullOrEmpty(String text) {
    if (text == "" || text.trim().isEmpty) return true;
    return false;
  }

  static bool isValidPrice(String text) {
    if (isNullOrEmpty(text)) return false;
    double? val = double.tryParse(text);
    if (val != null && val > 0.0) return true;
    return false;
  }

  static String getRandomString(int length) {
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    Random _rnd = Random();

    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => _chars.codeUnitAt(
          _rnd.nextInt(_chars.length),
        ),
      ),
    );
  }

  static String rawToUTF8(dynamic rawString) {
    if (rawString == null) {
      return '';
    }
    try {
      return utf8.decode(rawString.runes.toList() as List<int>);
    } on FormatException {
      return rawString as String;
    }
  }

  static String shortenString(String input, int subLength) {
    if (input.length > subLength) {
      return input.substring(0, 10); // Take the first 10 characters
    } else {
      return input; // Return the input as is
    }
  }
}
