import 'package:flutter/material.dart';
import 'package:lesson5/list_element.dart';

import 'my_home_page.dart';
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


