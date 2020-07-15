class Task {
  String taskTitle;
  bool isDone;

  Task({this.isDone = false, this.taskTitle});

  void toggle() {
    isDone = !isDone;
  }
}
