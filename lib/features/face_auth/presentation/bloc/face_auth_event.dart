import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/face_data.dart';

part 'face_auth_event.freezed.dart';

@freezed
class FaceAuthEvent with _$FaceAuthEvent {
  const factory FaceAuthEvent.startCapture() = _StartCapture;
  const factory FaceAuthEvent.startAuthentication(FaceData faceData) =
      _StartAuthentication;
}
