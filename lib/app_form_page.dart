import 'package:flutter/material.dart';

class AppFormPage extends StatelessWidget {
  const AppFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A Flutter Form'),
      ),
      body: const SafeArea(
        child: Text('Form goes here.'),
      ),
    );
  }
}
