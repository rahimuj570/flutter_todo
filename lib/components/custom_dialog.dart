import 'package:flutter/material.dart';
import 'package:todo/components/custom_btn.dart';

class CustomDialog extends StatelessWidget {
  final VoidCallback save;
  final VoidCallback cancel;
  final TextEditingController txtController;

  const CustomDialog(
      {super.key, required this.save, required this.cancel, required this.txtController});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[500],
      content: Container(
        // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        height: MediaQuery
            .of(context)
            .size
            .height * .13,
        width: MediaQuery
            .of(context)
            .size
            .width * .8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: txtController,
              autofocus: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // hintText: "Your To Do",
                  labelStyle: TextStyle(
                      fontSize: 20, color: Color.fromARGB(233, 55, 0, 0)),
                  label: Text("Your To Do")),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Custombtn(
                    action: save,
                    text: "Save",
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Custombtn(
                    action: cancel,
                    text: "Cancel",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
