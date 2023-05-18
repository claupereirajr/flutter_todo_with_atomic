import 'package:flutter/material.dart';
import 'package:flutter_todo_with_atomic/pages/index.dart';
import 'package:flutter_todo_with_atomic/reducers/todo_reducer.dart';
import 'package:rx_notifier/rx_notifier.dart';

void main() {
  TodoReducer();
  runApp(
    const RxRoot(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ToDoList with AtomicState',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
