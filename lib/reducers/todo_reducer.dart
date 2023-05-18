import 'package:flutter_todo_with_atomic/states.dart';
import 'package:rx_notifier/rx_notifier.dart';

class TodoReducer extends RxReducer {
  TodoReducer() {
    on(() => [addTodoAction.value], () {});
  }
}
