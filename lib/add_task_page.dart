import 'package:flutter/material.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("AddTaskPage"),
      ),
      body: _contentWidget(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _contentWidget(){
    return Container(
      padding: EdgeInsets.only(top:100,left: 50, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _textField(0,'title'),
          _textField(1,'date'),
          _buttonWidget(),
    ],

      ),


    );
  }

  Widget _textField(int id ,String hintString){
    return Container(
      height: 50,
      width: 100,
      child: TextField(
        decoration: InputDecoration(hintText: hintString),
      ),
    );
  }

  Widget _buttonWidget(){
    return Container(
      margin: EdgeInsets.only(top:100),
      child: InkWell(
        child: Container(
          width: 133,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              'Add',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          )
        ),
        onTap: () {

          Navigator.of(context).pop();
        },
      ),
    );

  }
}
