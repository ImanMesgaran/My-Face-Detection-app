import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/face_data.dart';

abstract class FaceAuthRepository {
  Future<Either<Failure, FaceData>> captureInitialFace();
  Future<Either<Failure, bool>> authenticateFace(FaceData currentFace);
  Future<Either<Failure, Unit>> saveInitialFace(FaceData faceData);
  Future<Either<Failure, FaceData?>> getInitialFace();
}
