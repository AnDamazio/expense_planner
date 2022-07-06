import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  NewTransaction(this.actionHandler);
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function actionHandler;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              autocorrect: true,
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                actionHandler(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              child: const Text("Add transaction"),
            )
          ],
        ),
      ),
    );
  }
}
