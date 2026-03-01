import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'data/repository/ai_repository_impl.dart';
import 'data/network/gemini_service.dart';
import 'domain/ai_repository.dart';

final aiRepositoryProvider = Provider<AIRepository>((ref) {
  return AIRepositoryImpl(ref.read(geminiServiceProvider));
});

final geminiServiceProvider = Provider((_) => GeminiService());