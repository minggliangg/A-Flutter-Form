import 'package:a_flutter_form/app_form_validators.dart';
import 'package:flutter/material.dart';

class AppFormPage extends StatefulWidget {
  const AppFormPage({Key? key}) : super(key: key);

  @override
  State<AppFormPage> createState() => _AppFormPageState();
}

class _AppFormPageState extends State<AppFormPage> {
  final listOfFood = <String>[
    'Pizza',
    'Bar Cho Mee',
    'Naan',
    'Nasi Goreng Pattaya',
  ];

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
                    validator: (name) => nameValidator(name),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      label: Text('Name'),
                      hintText: 'James Tan',
                    ),
                  ),
                ),
                _FormFieldPadding(
                  child: TextFormField(
                    validator: (ageString) => ageValidator(ageString),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      label: Text('Age'),
                      hintText: '25',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                _FormFieldPadding(
                  child: DropdownButtonFormField<String>(
                    validator: (favouriteFood) =>
                        favouriteFoodValidator(favouriteFood),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    items: listOfFood
                        .map(
                          (foodItem) => DropdownMenuItem(
                            child: Text(foodItem),
                            value: foodItem,
                          ),
                        )
                        .toList(growable: false),
                    decoration: const InputDecoration(
                      label: Text('Favourite Food'),
                    ),
                    onChanged: (newValue) {},
                    isDense: true,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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
                    ElevatedButton(
                      onPressed: () {
                        final currentForm = Form.of(context)!;
                        currentForm.reset();
                      },
                      child: const Text('Reset'),
                    ),
                  ],
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
