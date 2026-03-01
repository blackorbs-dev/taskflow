import 'package:taskflow/core/error/error.dart';
import 'package:taskflow/core/network/response.dart';
import 'package:taskflow/core/network/safe_caller.dart';
import 'package:taskflow/features/ai/domain/models/reschedule_info.dart';
import 'package:taskflow/features/tasks/data/task_data_mapper.dart';
import 'package:taskflow/features/tasks/domain/models/task.dart';
import '../../domain/ai_repository.dart';
import '../../domain/models/suggested_task.dart';
import '../mappers/reschedule_info_mapper.dart';
import 'prompt_builder.dart';
import '../mappers/suggested_task_mapper.dart';
import '../network/gemini_service.dart';

class AIRepositoryImpl extends AIRepository{

  final GeminiService _geminiService;

  AIRepositoryImpl(this._geminiService);

  @override
  Future<Response<List<SuggestedTask>, NetworkError>> generateTasks(String prompt) async{
    prompt = PromptBuilder.buildGenerateTasksPrompt(userPrompt: prompt);
    final response = await safeCall(() =>
        _geminiService.generateTasks(prompt)
    );
    return response.mapData((data) =>
        data.map((e) => e.toDomain()).toList()
    );
  }

  @override
  Future<Response<RescheduleInfo, NetworkError>> rescheduleTask(Task task) async {
    final prompt = PromptBuilder.buildReschedulePrompt(task.toDto());
    final response = await safeCall(() =>
        _geminiService.reschedule(prompt)
    );
    return response.mapData((data) => data.toDomain());
  }
}