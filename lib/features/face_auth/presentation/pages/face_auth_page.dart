import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:camera/camera.dart';
import '../bloc/face_auth_bloc.dart';
import '../widgets/camera_preview_widget.dart';
import '../widgets/auth_status_widget.dart';

class FaceAuthPage extends StatelessWidget {
  const FaceAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FaceAuthBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Face Authentication'),
        ),
        body: BlocBuilder<FaceAuthBloc, FaceAuthState>(
          builder: (context, state) {
            return state.when(
              initial: () => _buildInitialView(context),
              capturing: () => const CameraPreviewWidget(),
              captured: (faceData) => _buildCapturedView(context),
              authenticating: () => const CameraPreviewWidget(),
              authenticated: (isAuthenticated) => AuthStatusWidget(
                isAuthenticated: isAuthenticated,
              ),
              error: (message) => Center(
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildInitialView(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          context.read<FaceAuthBloc>().add(const FaceAuthEvent.startCapture());
        },
        child: const Text('Start Face Capture'),
      ),
    );
  }

  Widget _buildCapturedView(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Face captured successfully!'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.read<FaceAuthBloc>().add(
                const FaceAuthEvent.startAuthentication(),
              );
            },
            child: const Text('Start Authentication'),
          ),
        ],
      ),
    );
  }
}
