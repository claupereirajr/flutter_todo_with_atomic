import 'package:flutter/material.dart';
import 'package:flutter_todo_with_atomic/pages/index.dart';
import 'package:flutter_todo_with_atomic/states.dart';
import 'package:rx_notifier/rx_notifier.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final todos = context.select(() => todosState.value);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo List with AtomicState'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTaskPage(),
            )),
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 6.0, bottom: 16.0),
              child: const Text('My Tasks:',
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            ),
            Expanded(
                flex: 1,
                child: ListView.builder(
                    itemCount: 14,
                    itemBuilder: (context, index) => _todoCard(context)))
          ],
        ),
      ),
    );
  }
}

Card _todoCard(BuildContext context) {
  return Card(
    child: ListTile(
        title: const Text(
          'batata',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        subtitle: const Text(
          'feijao',
          style: TextStyle(fontSize: 14.0, color: Colors.black54),
        ),
        trailing: SizedBox(
          width: 96.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.check),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.close),
              ),
            ],
          ),
        )),
  );
}
