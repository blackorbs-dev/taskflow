abstract class ProjectApi{
  static const String projects = '/api/projects';
  static String project(int id) => '$projects/$id';
}