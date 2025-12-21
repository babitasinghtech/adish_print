class User {
  final String id;
  final String name;
  final String email;
  final String? phone;
  final String? address;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.phone,
    this.address,
  });

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? address,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      address: address ?? this.address,
    );
  }
}
