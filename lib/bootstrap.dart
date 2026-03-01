import 'package:firebase_core/firebase_core.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'core/constants/store_keys.dart';
import 'firebase_options.dart';
import 'shared/data/adapters/hive_registrar.g.dart';
import 'shared/domain/user.dart';

Future<void> bootstrap() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Hive.initFlutter();
  Hive.registerAdapters();
  await Hive.openBox<String>(StoreKeys.settingsBox);
  await Hive.openBox<User>(StoreKeys.userBox);
}
