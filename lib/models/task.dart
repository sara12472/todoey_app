class Task {
  late final String name;
  late bool isDone = false;

  Task(this.name);

  void toggleDone() {
    isDone = !isDone;
  }
}
