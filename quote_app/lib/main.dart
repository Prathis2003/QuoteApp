import 'package:flutter/material.dart';
import 'package:quote_app/quote.dart';
import 'package:quote_app/quoteCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var quotes = [
    Quote(
        author: 'oscar Wilde',
        text: 'Quote 1'),
    Quote(
        author: 'oscar Wilde',
        text: 'Quote 2'),
    Quote(
        author: 'oscar Wilde',
        text: 'Quote 3')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: Text('Quotes App'),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: Column(
            children: quotes
                .map(
                  (quote) => QuoteCard(quote: quote,delete: (){
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                  ),
                )
                .toList(),
          ),
        ));
  }
}
