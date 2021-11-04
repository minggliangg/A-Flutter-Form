import 'package:a_flutter_form/route/app_form_page.dart';
import 'package:a_flutter_form/route/app_home_page.dart';
import 'package:a_flutter_form/route/app_review_page.dart';
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
      routes: {
        '/': (context) => const AppHomePage(),
        '/form': (context) => const AppFormPage(),
        '/review': (context) => const AppReviewPage(),
        '/profile': (context) => const AppHomePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
    );
  }
}
