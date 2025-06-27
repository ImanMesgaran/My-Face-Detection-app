import '../models/profile_model.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileModel> getProfile(String id);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  // final http.Client client; // Example dependency

  ProfileRemoteDataSourceImpl();

  @override
  Future<ProfileModel> getProfile(String id) async {
    // Simulate network call
    await Future.delayed(Duration(milliseconds: 500));
    return ProfileModel(id: id, name: 'John Doe', email: 'john@example.com');
  }
}
