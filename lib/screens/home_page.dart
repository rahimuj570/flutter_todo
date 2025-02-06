import 'package:flutter/material.dart';
import 'package:todo/components/custom_dialog.dart';
import 'package:todo/components/todo_tile.dart';

import '';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todoList = [
    ['ssss', false]
  ];

  @override
  Widget build(BuildContext context) {
    final txtController = TextEditingController();

    void saveTask(String text) {
      setState(() {
        todoList.add([text, false]);
        print(todoList.length);
      });
      txtController.clear();
      Navigator.pop(context);
    }

    void onCheckChange(int index){
      setState(() {
        todoList[index][1]=!todoList[index][1];
      });
    }

    void delete(int index){
      setState(() {
        todoList.removeAt(index);
      });
    }

    void _create_task() {
      showDialog(
          context: context,
          builder: (context) => CustomDialog(
                txtController: txtController,
                save: () => saveTask(txtController.text),
                cancel: () {
                  txtController.clear();
                  Navigator.pop(context);
                },
              ));
    }

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0,left: 20,right: 20),
        child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return TodoTile(delete:(context)=>delete(index),checkChange: (b)=>onCheckChange(index),text: todoList[index][0], isDone: todoList[index][1]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _create_task,
          child: Icon(Icons.add),
          backgroundColor: Colors.yellow[500]),
    ));
  }
}
