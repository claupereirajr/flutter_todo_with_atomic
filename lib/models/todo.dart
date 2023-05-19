// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable

import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final String id;
  final String task;
  final String desc;
  bool? isDone;
  bool? isDeleted;

  Todo({
    required this.id,
    required this.task,
    required this.desc,
    this.isDone,
    this.isDeleted,
  });

  Todo copyWith({
    String? id,
    String? task,
    String? desc,
    bool? isDone,
    bool? isDeleted,
  }) {
    return Todo(
      id: id ?? this.id,
      task: task ?? this.task,
      desc: desc ?? this.desc,
      isDone: isDone ?? this.isDone,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      task,
      desc,
      isDone,
      isDeleted,
    ];
  }

  static List<Todo> todos = [
    Todo(
        id: '1',
        task: 'Tomar remédios',
        desc: 'Tomar remédio para hipertensão'),
    Todo(
        id: '2',
        task: 'Colocar comida pros gatos',
        desc: 'Não esquece de misturar bem o molhado'),
    Todo(id: '3', task: 'Água das plantas', desc: 'Não esquece do banheiro')
  ];
}
