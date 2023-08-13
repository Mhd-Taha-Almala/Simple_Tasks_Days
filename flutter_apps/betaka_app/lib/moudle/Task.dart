// ignore: file_names
class Task {
  final String name;
  // ignore: non_constant_identifier_names
  bool IsDone;
  Task({
    required this.name,
    // ignore: non_constant_identifier_names
    this.IsDone = false,
  });
  void changeDone() {
    IsDone = !IsDone;
  }
}
