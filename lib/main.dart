import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_task_app/add_task_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  void _addTask(){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => AddTaskPage())
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Task"),
      ),
      body: _taskList(),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _taskList(){
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemExtent: 50.0,
        itemBuilder: (BuildContext context, int index) {
          return _taskTile();
        },
      ),
    );

  }

  Widget _taskTile(){

    return Container(
      height: 50,

    );
  }
}
