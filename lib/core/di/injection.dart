import 'package:get_it/get_it.dart';
import '../../features/profile/profile_injection.dart';
import '../../features/face_auth/face_auth_injection.dart';

final getIt = GetIt.instance;

void initDependencies() {
  // Register core dependencies here

  // Register feature dependencies
  registerProfileFeature();
  // TODO: Implement face auth feature registration
  // registerFaceAuthFeature();
}
