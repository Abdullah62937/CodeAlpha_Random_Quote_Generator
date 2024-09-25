import 'package:flutter/material.dart';
import 'package:random_quote_generator/Pages/Home.dart';
import 'package:random_quote_generator/Pages/Quotes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Quote Generator',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(), 
        '/quote-generator': (context) => QuoteGenerator(), 
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
