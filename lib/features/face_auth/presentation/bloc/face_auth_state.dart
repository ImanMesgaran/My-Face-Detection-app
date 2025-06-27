import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/face_data.dart';

part 'face_auth_state.freezed.dart';

@freezed
class FaceAuthState with _$FaceAuthState {
  const factory FaceAuthState.initial() = _Initial;
  const factory FaceAuthState.capturing() = _Capturing;
  const factory FaceAuthState.captured(FaceData faceData) = _Captured;
  const factory FaceAuthState.authenticating() = _Authenticating;
  const factory FaceAuthState.authenticated(bool isAuthenticated) =
      _Authenticated;
  const factory FaceAuthState.error(String message) = _Error;
}
