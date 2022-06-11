class User{
  final int id;
  final String name;
  User({required this.id, required this.name,});
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }
  @override
  String toString() {
    return 'Dog{id: $id, name: $name,}';
  }
}