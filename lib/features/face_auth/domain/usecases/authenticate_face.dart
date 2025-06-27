import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/face_data.dart';
import '../repositories/face_auth_repository.dart';

class AuthenticateFace {
  final FaceAuthRepository repository;

  AuthenticateFace(this.repository);

  Future<Either<Failure, bool>> call(FaceData currentFace) async {
    return await repository.authenticateFace(currentFace);
  }
}
