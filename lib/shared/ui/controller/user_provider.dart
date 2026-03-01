import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taskflow/shared/shared_module.dart';

part 'user_provider.g.dart';

@riverpod
String userInitial(Ref ref) {
  final user = ref.read(userRepositoryProvider).getUser();
  return user?.name[0].toUpperCase() ?? 'J';
}