import 'package:flutter/material.dart';
import 'package:flutter_app/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Curso de programação mobile',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Color(0)),
      ),

      home: const MyHomePage(title: 'Programação Mobile - Flutter'),
    );
  }
}

