import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final quote;
  final  delete;
  QuoteCard({this.quote,this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quote.text,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                quote.author,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 8,
              ),
              TextButton.icon(
                onPressed: delete,
                label: Text('Delete Quote'),
                icon: Icon(Icons.delete),
              )
            ],
          ),
        ));
  }
}
