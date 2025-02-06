import 'package:flutter/material.dart';

class Custombtn extends StatelessWidget {
  final VoidCallback action;
  final String text;

  const Custombtn({super.key, required this.action, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        color: Colors.yellow[200],
        onPressed: action,
        child: Text(text),
      ),
    );
  }
}
