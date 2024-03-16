import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box("mybox");

  void createInitialData() {
    toDoList = [
      ["Finish app", false],
      ["Go to school", true]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODO");
  }

  void updateDataBase() {
    _myBox.put("TODO", toDoList);
  }
}
