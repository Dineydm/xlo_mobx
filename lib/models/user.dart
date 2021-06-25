enum UserType { PARTICULAR, PROFESSIONAL }

class User {

  User({
    this.id,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.password,
    this.type = UserType.PARTICULAR,
    this.createdAt,
  });

  String id;
  String name;
  String username;
  String email;
  String phone;
  String password;
  UserType type;
  DateTime createdAt;

  @override
  String toString() {
    return 'User{id: $id, name: $name, userName: $username, email: $email, phone: $phone, password: $password, type: $type, createdAt: $createdAt}';
  }
}