import 'package:a_flutter_form/user_entity.dart';
import 'package:flutter/material.dart';

class AppReviewPage extends StatelessWidget {
  const AppReviewPage({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final UserEntity appUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Page'),
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
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Back'),
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
