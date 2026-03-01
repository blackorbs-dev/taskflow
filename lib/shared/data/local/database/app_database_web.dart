import 'package:drift/drift.dart';
import 'package:drift/web.dart';

import 'app_database.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // In-memory DB (lost on refresh, perfect for previews)
    return WebDatabase.withStorage(
      DriftWebStorage.volatile(),
      logStatements: true,
    );
  });
}

AppDatabase createDatabase() {
  return AppDatabase(_openConnection());
}
