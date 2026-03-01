import 'package:drift/drift.dart';

class ProjectEntities extends Table {
  late final id = integer().autoIncrement()();
  late final name = text()();
  late final color = integer()();
  late final icon = text()();
  late final description = text().nullable()();

  late final isDirty = boolean().withDefault(const Constant(false))();
  late final isDeleted = boolean().withDefault(const Constant(false))();

  late final createdAt = dateTime()();
  late final updatedAt = dateTime()();
}
