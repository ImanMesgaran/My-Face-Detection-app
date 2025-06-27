import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/face_data.dart';
import '../../domain/usecases/capture_initial_face.dart';
import '../../domain/usecases/authenticate_face.dart';

part 'face_auth_event.dart';
part 'face_auth_state.dart';
part 'face_auth_bloc.freezed.dart';

class FaceAuthBloc extends Bloc<FaceAuthEvent, FaceAuthState> {
  final CaptureInitialFace captureInitialFace;
  final AuthenticateFace authenticateFace;

  FaceAuthBloc({
    required this.captureInitialFace,
    required this.authenticateFace,
  }) : super(const FaceAuthState.initial()) {
    on<_StartCapture>(_onStartCapture);
    on<_StartAuthentication>(_onStartAuthentication);
  }

  Future<void> _onStartCapture(
    _StartCapture event,
    Emitter<FaceAuthState> emit,
  ) async {
    emit(const FaceAuthState.capturing());
    final result = await captureInitialFace();
    result.fold(
      (failure) => emit(FaceAuthState.error(failure.message)),
      (faceData) => emit(FaceAuthState.captured(faceData)),
    );
  }

  Future<void> _onStartAuthentication(
    _StartAuthentication event,
    Emitter<FaceAuthState> emit,
  ) async {
    emit(const FaceAuthState.authenticating());
    final result = await authenticateFace(event.currentFace);
    result.fold(
      (failure) => emit(FaceAuthState.error(failure.message)),
      (isAuthenticated) => emit(FaceAuthState.authenticated(isAuthenticated)),
    );
  }
}
