import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exceptions.dart';

abstract class CacheUniqueValue {
  /// Gets the cached [A UNIQUE VALUE] which was gotten the last time
  /// the user had an internet connection
  ///
  /// Throws [CacheException] of no cached data is present.
  Future<void> cacheString(String str);
}

class CacheSet implements CacheUniqueValue {
  final SharedPreferences sharedPreferences;

  CacheSet(this.sharedPreferences);

  @override
  Future<void> cacheString(String str) {
    return sharedPreferences.setString(
      str,
      str,
    );
  }
}
