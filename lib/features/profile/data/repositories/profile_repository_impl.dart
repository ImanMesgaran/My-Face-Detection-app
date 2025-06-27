import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/profile.dart';
import '../../domain/repositories/profile_repository.dart';
import '../datasources/profile_remote_data_source.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource remoteDataSource;

  ProfileRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, Profile>> getProfile(String id) async {
    try {
      final profile = await remoteDataSource.getProfile(id);
      return Right(profile);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
