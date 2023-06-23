import 'dart:html';

class SessionStorageHelper {
  static Storage sessionStorage = window.sessionStorage;

  static void saveValue(String key, String value) {
    sessionStorage[key] = value;
  }

  static String? getValue(String key) {
    return sessionStorage[key];
  }

  static void removeValue(String key) {
    sessionStorage.remove(key);
  }

  static void clearall() {
    sessionStorage.clear();
  }
}
