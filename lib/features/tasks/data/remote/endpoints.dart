abstract class TaskApi {
  static const String tasks = '/api/tasks';
  static String task(int id) => '$tasks/$id';
}