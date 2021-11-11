import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget{

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextButton(
                    child: Text(
                      'Nova Transação',
                      style: TextStyle(color: Colors.white), 
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: () {
                      print(titleController.text);
                      print(valueController.text);
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
        
  }
  
}