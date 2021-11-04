import 'package:a_flutter_form/provider/user_provider.dart';
import 'package:a_flutter_form/route/app_form_page.dart';
import 'package:a_flutter_form/route/app_home_page.dart';
import 'package:a_flutter_form/route/app_profile_page.dart';
import 'package:a_flutter_form/route/app_review_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        title: 'A Flutter Form',
        routes: {
          '/': (context) => const AppHomePage(),
          '/form': (context) => const AppFormPage(),
          '/review': (context) => const AppReviewPage(),
          '/profile': (context) => const AppProfilePage(),
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
      ),
    );
  }
}
