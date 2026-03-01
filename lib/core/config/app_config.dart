import 'environment.dart';

abstract class AppConfig {
  static late final Environment env;

  static void init(String? appFlavor) {
    env = Environment.values.firstWhere(
      (e) => e.name == appFlavor,
      orElse: () => Environment.dev
    );
  }
}
