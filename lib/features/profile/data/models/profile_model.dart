import '../../domain/entities/profile.dart';

class ProfileModel extends Profile {
  ProfileModel({
    required String id,
    required String name,
    required String email,
  }) : super(id: id, name: name, email: email);

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    id: json['id'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
  );

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'email': email};
}
