import 'package:rx_notifier/rx_notifier.dart';

//states /atom
final todosState = RxNotifier(0);

//actions
final addTodoAction = RxNotifier.action();
final delTodoAction = RxNotifier.action();
