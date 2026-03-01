import 'dart:convert';
import 'package:taskflow/features/tasks/data/remote/task_dto.dart';

abstract class PromptBuilder {

  static String buildGenerateTasksPrompt({
    required String userPrompt,
    int maxTasks = 10,
  }) {
    final now = DateTime.now();

    return """
You are generating task suggestions for a task manager app.

CRITICAL TIME CONTEXT (must follow):
- Current time (ISO-8601): ${now.toIso8601String()}

HARD RULES:
1) Return ONLY valid JSON that matches the response schema (array of tasks).
2) Every task MUST include: title, priority, dueAt. description is optional.
3) Every dueAt MUST be a valid ISO-8601 date-time string.
4) Spread tasks out (avoid assigning the exact same dueAt to many tasks)
5) Do not invent outdated dates. Always compute relative terms (today/tomorrow/next week) based on the Current time above.

USER REQUEST:
$userPrompt

Now generate up to $maxTasks tasks.
Return ONLY the JSON array. No markdown. No extra text.
""";
  }

  static String buildReschedulePrompt(TaskDto task) {
    final now = DateTime.now();

    return """
You are a scheduling assistant for a task manager app.

Task is overdue and needs a new due date/time.

Now (ISO-8601): ${now.toIso8601String()}

Task (JSON):
${jsonEncode(task.toJson())}

Rules:
1) Propose a new dueAt strictly AFTER "Now".
2) Keep it realistic and helpful for a human schedule.
3) Prefer near-term times for higher priority tasks.
4) Description must be short, natural language, and motivational/clear.
   Examples: "Tomorrow morning is a fresh start", "Tomorrow, after lunch"
5) Output ONLY valid JSON matching the provided response schema.

""";
  }
}