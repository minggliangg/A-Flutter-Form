import 'package:a_flutter_form/app_form_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Flutter Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppFormPage(),
    );
  }
}
