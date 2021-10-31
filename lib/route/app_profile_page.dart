import 'package:flutter/material.dart';

class AppProfilePage extends StatelessWidget {
  const AppProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Your profile goes here'),
        ),
      ),
    );
  }
}
