import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/profile_bloc.dart';
import '../widgets/profile_details_widget.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/di/injection.dart';

class ProfilePage extends StatelessWidget {
  final String userId;

  const ProfilePage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileBloc>()..add(ProfileEvent.getProfile(userId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Profile')),
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (profile) => ProfileDetailsWidget(profile: profile),
              error: (failure) => AppErrorWidget(failure: failure),
            );
          },
        ),
      ),
    );
  }
}
