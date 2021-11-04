import 'package:a_flutter_form/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProfilePage extends StatelessWidget {
  const AppProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appUser = Provider.of<UserProvider>(context).userEntity;

    final message = appUser != null
        ? '${appUser.name}, age ${appUser.age} loves to eat ${appUser.favouriteFood}'
        : 'Please fill up the form!';

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<UserProvider>(context, listen: false)
                          .clearUser();
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/', (Route<dynamic> route) => false);
                    },
                    child: const Text('Clear'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/', (Route<dynamic> route) => false);
                    },
                    child: const Text('Back'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
