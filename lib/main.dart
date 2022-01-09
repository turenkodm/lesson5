import 'package:flutter/material.dart';
import 'package:lesson5/list_element.dart';

import 'list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lesson 2.5',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline5: TextStyle(
            fontSize: 20,
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Lesson 2.5'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: ItemElement(
            name: list[index].name,
            phone: list[index].phone,
          ));
        },
      ),
    );
  }
}
