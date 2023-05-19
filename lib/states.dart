import 'package:flutter_todo_with_atomic/models/index.dart';
import 'package:rx_notifier/rx_notifier.dart';

//states /atom
final todosState = RxNotifier(Todo.todos);

//actions
final addTodoAction = RxNotifier.action();
final delTodoAction = RxNotifier.action();
