class UserRemoteDataModel {
  final String name, email;

  UserRemoteDataModel({
    required this.name,
    required this.email,
    String? id,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
    };
  }
}
