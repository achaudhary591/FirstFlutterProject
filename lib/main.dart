import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Exploration!',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Space Exploration Planner!"),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          Progress(),
          TaskList(),
        ],
      ),
    );
  }
}

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("You are this far from exploring the whole universe"),
        LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: "Load rocket with supplies"),
        TaskItem(label: "Launch Rocket"),
        TaskItem(label: "Circle the home planet"),
        TaskItem(label: "Head out to the first moon"),
        TaskItem(label: "launch moon lander #1"),

      ],
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;

  TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: _value, onChanged: (newValue) => setState(() => _value = newValue),
        ),
        Text(widget.label),
      ],
    );
  }
}






// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   //const ({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("My First App"),
//         centerTitle: true,
//         backgroundColor: Colors.red[600],
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () { },
//           child: Text("ClickMe"),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () { },
//         backgroundColor: Colors.red[600],
//         child: const Text('Click'),
//       ),
//     );
//   }
// }


