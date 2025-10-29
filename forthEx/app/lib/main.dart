import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class CustomCard extends StatelessWidget {
  final String text;
  final Color color;

  const CustomCard({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[color, Colors.deepPurple.shade900],
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Third Ex',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomCard(text: "OOP", color: Colors.blue[100]!),
            CustomCard(text: "DART", color: Colors.blue[300]!),
            CustomCard(text: "FLUTTER", color: Colors.blue[600]!),
          ],
        ),
      ),
    );
  }
}
