import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// shared_preferences help
class SpUtils {
  /// ### example
  /// ```dart
  /// SpUtils.save("EXAMPLE",1);
  /// ```
  static save(String key, val) async {
    var sp = await SharedPreferences.getInstance();

    if (val is String) {
      await sp.setString(key, val);
    } else if (val is int) {
      await sp.setInt(key, val);
    } else if (val is bool) {
      await sp.setBool(key, val);
    } else if (val is double) {
      await sp.setDouble(key, val);
    } else if (val is Map) {
      await sp.setString(key, json.encode(val));
    }
  }

  /// ### example
  /// ```dart
  /// SpUtils.find("EXAMPLE",0);
  /// ```
  static find(String key, defaultVal) async {
    var sp = await SharedPreferences.getInstance();
    if (defaultVal is int) {
      return sp.getInt(key) ?? defaultVal;
    } else if (defaultVal is String) {
      return sp.getString(key) ?? defaultVal;
    } else if (defaultVal is bool) {
      return sp.getBool(key) ?? defaultVal;
    } else if (defaultVal is double) {
      return sp.getDouble(key) ?? defaultVal;
    }
  }

  /// clear all database
  /// ### example
  /// ```dart
  /// SpUtils.clear();
  /// ```
  static void clear() async {
    var sp = await SharedPreferences.getInstance();
    sp.clear();
  }

  /// clear one key
  /// ``` dart
  /// SpUtils.remove("EXAMPLE");
  /// ```
  static void remove(String key) async {
    var sp = await SharedPreferences.getInstance();
    sp.remove(key);
  }
}
