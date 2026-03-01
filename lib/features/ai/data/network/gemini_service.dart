import 'dart:convert';
import 'dart:developer';
import 'package:firebase_ai/firebase_ai.dart';
import '../../../tasks/domain/models/task.dart';
import '../dto/reschedule_info_dto.dart';
import '../dto/suggested_task_dto.dart';

class GeminiService {

  Future<List<SuggestedTaskDto>> generateTasks(String prompt) async {
    final response = await _tasksModel.generateContent(
        [Content.text(prompt)]
    );
    log('Tasks response: ${response.text}');
    final data = jsonDecode(response.text ?? '[]');
    return List<SuggestedTaskDto>.from(data.map((e) =>
        SuggestedTaskDto.fromJson(e)
    ));
  }

  Future<RescheduleInfoDto> reschedule(String prompt) async {
    final response = await _rescheduleModel.generateContent(
        [Content.text(prompt)]
    );
    log('Reschedule response: ${response.text}');
    final json = jsonDecode(response.text ?? '{}');
    return RescheduleInfoDto.fromJson(json);
  }

  GenerativeModel get _tasksModel {
    return FirebaseAI.googleAI().generativeModel(
      model: 'gemini-2.5-flash',
      generationConfig: GenerationConfig(
        responseMimeType: 'application/json',
        responseSchema: _tasksJsonSchema,
      ),
    );
  }

  GenerativeModel get _rescheduleModel {
    return FirebaseAI.googleAI().generativeModel(
      model: 'gemini-2.5-flash',
      generationConfig: GenerationConfig(
        responseMimeType: 'application/json',
        responseSchema: _rescheduleSchema,
      ),
    );
  }

  Schema get _tasksJsonSchema => Schema.array(
      items: Schema.object(
          properties: {
            "title": Schema.string(),
            "description": Schema.string(),
            "priority": Schema.enumString(
                enumValues: TaskPriority.values
                    .map((e) => e.name).toList()
            ),
            "dueAt": Schema.string(format: "date-time"),
          },
          optionalProperties: [ 'description' ]
      )
  );

  Schema get _rescheduleSchema => Schema.object(
    description: "Rescheduling suggestion for one overdue task",
    properties: {
      "dueAt": Schema.string(
        format: "date-time",
        description:
        "New proposed due date/time in ISO date-time format (must be in the future)",
      ),
      "description": Schema.string(
        description:
        "Short natural-language scheduling note, e.g. 'Tomorrow, after lunch'",
      ),
    },
  );
}