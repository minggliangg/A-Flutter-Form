import 'package:a_flutter_form/entity/user_entity.dart';
import 'package:a_flutter_form/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppReviewPage extends StatelessWidget {
  const AppReviewPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appUser = ModalRoute.of(context)!.settings.arguments as UserEntity;
    return Scaffold(
      appBar: AppBar(
        title: const Text('The review'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            _ReviewField(
              label: 'Name',
              value: appUser.name,
            ),
            _ReviewField(
              label: 'Age',
              value: appUser.age.toString(),
            ),
            _ReviewField(
              label: 'Favourite food',
              value: appUser.favouriteFood,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<UserProvider>(context, listen: false)
                        .updateUser(appUser);
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/profile', ModalRoute.withName('/'));
                  },
                  child: const Text('Submit'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Back'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ReviewField extends StatelessWidget {
  const _ReviewField({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);
  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.caption,
            ),
            Text(value ?? ''),
          ],
        ),
      ),
    );
  }
}
