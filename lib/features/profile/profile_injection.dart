import 'package:get_it/get_it.dart';
import 'data/datasources/profile_remote_data_source.dart';
import 'data/repositories/profile_repository_impl.dart';
import 'domain/repositories/profile_repository.dart';
import 'domain/usecases/get_profile.dart';
import 'presentation/bloc/profile_bloc.dart';

final getIt = GetIt.instance;

void registerProfileFeature() {
  // Data sources
  getIt.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(),
  );

  // Repository
  getIt.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(remoteDataSource: getIt()),
  );

  // Use case
  getIt.registerLazySingleton(() => GetProfile(getIt()));

  // Bloc
  getIt.registerFactory(() => ProfileBloc(getProfile: getIt()));
}
