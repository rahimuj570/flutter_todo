import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String text;
  final bool isDone;
  final Function(bool?) checkChange;
  final Function(BuildContext) delete;

  const TodoTile(
      {super.key,
      required this.delete,
      required this.text,
      required this.isDone,
      required this.checkChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Slidable(
        endActionPane: ActionPane(motion: ScrollMotion(), children: [
          SlidableAction(
            backgroundColor: Colors.red,
            onPressed: delete,
            icon: Icons.delete,
            label: "Delete",
          )
        ]),
        child: Container(
          decoration: BoxDecoration(color: Colors.yellow[400], boxShadow: [
            BoxShadow(
                color: Colors.black, blurRadius: .1, offset: Offset(.1, .2))
          ]),
          alignment: Alignment(0, 0),
          padding: EdgeInsets.all(10),
          // margin: EdgeInsets.only(bottom: 20),
          // color: Colors.yellow[300],
          child: Row(
            children: [
              Checkbox(value: isDone, onChanged: checkChange),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
