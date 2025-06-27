import 'package:flutter/material.dart';
import '../../domain/entities/profile.dart';

class ProfileDetailsWidget extends StatelessWidget {
  final Profile profile;

  const ProfileDetailsWidget({Key? key, required this.profile})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Name: [200m${profile.name}[0m'),
        Text('Email: [200m${profile.email}[0m'),
      ],
    );
  }
}
