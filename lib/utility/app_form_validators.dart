class AppValidators {
  static String? nameValidator(String? name) {
    if (name != null) {
      if (name.length < 5) {
        return 'Name is too short';
      }
      if (name.contains(RegExp(r'[^A-z ]'))) {
        return 'Name is invalid';
      }
      return null;
    }
    return null;
  }

  static String? ageValidator(String? ageString) {
    if (ageString != null) {
      try {
        final ageIntValue = int.parse(ageString);
        if (ageIntValue < 18) {
          return 'You must be at least 18 years old';
        } else if (ageIntValue > 100) {
          return 'You are too old for this';
        }
        return null;
      } on FormatException {
        return 'Age is invalid';
      }
    }
    return null;
  }

  static String? favouriteFoodValidator(String? favouriteFood) {
    if (favouriteFood == null) {
      return 'Please choose your favourite food';
    }
    return null;
  }
}
