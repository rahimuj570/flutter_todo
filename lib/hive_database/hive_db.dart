import 'package:hive/hive.dart';

class HiveDB {
  final hiveDb = Hive.box("todos");
  List todoList = [
    // ["sss", false]
  ];

  void update(List todoList) {
    this.todoList = todoList;
    hiveDb.put("todoList", todoList);
  }

  void load() {
    if (hiveDb.get("todoList") != null) todoList = hiveDb.get("todoList");
  }
}
