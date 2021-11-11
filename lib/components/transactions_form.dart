import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget{

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  _submitForm(){
    final title = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0.0;

    if(title.isEmpty || value <= 0){
      return;
    }

    onSubmit(title, value);
  }

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
              onSubmitted: (_) => _submitForm(),
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => _submitForm(),
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
                      padding: EdgeInsets.all(20),
                      shape: StadiumBorder(),
                    ),
                    onPressed: _submitForm,
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