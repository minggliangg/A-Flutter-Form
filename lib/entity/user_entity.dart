class UserEntity {
  final String? name;
  final int? age;
  final String? favouriteFood;

  const UserEntity({this.name, this.age, this.favouriteFood});

  UserEntity copyWith({String? name, int? age, String? favouriteFood}) =>
      UserEntity(
        name: name ?? this.name,
        age: age ?? this.age,
        favouriteFood: favouriteFood ?? this.favouriteFood,
      );
}
