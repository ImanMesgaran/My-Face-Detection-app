import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/face_data.dart';
import '../repositories/face_auth_repository.dart';

class CaptureInitialFace {
  final FaceAuthRepository repository;

  CaptureInitialFace(this.repository);

  Future<Either<Failure, FaceData>> call() async {
    return await repository.captureInitialFace();
  }
}
