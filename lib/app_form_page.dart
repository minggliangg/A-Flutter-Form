import 'package:flutter/material.dart';

class AppFormPage extends StatefulWidget {
  const AppFormPage({Key? key}) : super(key: key);

  @override
  State<AppFormPage> createState() => _AppFormPageState();
}

class _AppFormPageState extends State<AppFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A Flutter Form'),
      ),
      body: SafeArea(
        child: Form(
          child: Builder(builder: (context) {
            return Column(
              children: [
                _FormFieldPadding(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Name'),
                      hintText: 'James Tan',
                    ),
                  ),
                ),
                _FormFieldPadding(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Age'),
                      hintText: '25',
                    ),
                  ),
                ),
                _FormFieldPadding(
                  child: DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem<String>(
                        child: Text('Pasta'),
                        value: 'Pasta',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('Pizza'),
                        value: 'Pizza',
                      ),
                    ],
                    decoration: const InputDecoration(
                      label: Text('Favourite Food'),
                    ),
                    onChanged: (newValue) {},
                    isDense: true,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final currentForm = Form.of(context)!;
                    String snackBarText;
                    if (currentForm.validate()) {
                      snackBarText = 'Validation successful';
                    } else {
                      snackBarText = 'Validation failed';
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(snackBarText),
                      ),
                    );
                  },
                  child: const Text('Validate'),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class _FormFieldPadding extends StatelessWidget {
  const _FormFieldPadding({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: child,
    );
  }
}
