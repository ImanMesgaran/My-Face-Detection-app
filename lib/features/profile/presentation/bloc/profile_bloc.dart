import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/profile.dart';
import '../../domain/usecases/get_profile.dart';
import '../../../../core/error/failures.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfile getProfile;

  ProfileBloc({required this.getProfile})
    : super(const ProfileState.initial()) {
    on<_GetProfile>(_onGetProfile);
  }

  Future<void> _onGetProfile(
    _GetProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    final result = await getProfile(event.id);
    result.fold(
      (failure) => emit(ProfileState.error(failure)),
      (profile) => emit(ProfileState.loaded(profile)),
    );
  }
}
