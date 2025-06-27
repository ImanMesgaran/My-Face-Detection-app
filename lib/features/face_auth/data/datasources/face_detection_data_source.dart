import 'dart:io';
import 'dart:ui';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:google_mlkit_commons/google_mlkit_commons.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'dart:convert';
import '../../domain/entities/face_data.dart';

abstract class FaceDetectionDataSource {
  Future<CameraController> initializeCamera();
  Future<FaceData?> detectFace(CameraImage image);
  Future<void> disposeCamera();
  Future<String> saveFaceData(FaceData faceData);
  Future<FaceData?> loadFaceData(String filePath);
}

class FaceDetectionDataSourceImpl implements FaceDetectionDataSource {
  CameraController? _cameraController;
  final FaceDetector _faceDetector = FaceDetector(
    options: FaceDetectorOptions(
      enableClassification: true,
      enableLandmarks: true,
      enableTracking: true,
      minFaceSize: 0.15,
    ),
  );

  @override
  Future<CameraController> initializeCamera() async {
    final cameras = await availableCameras();
    final frontCamera = cameras.firstWhere(
      (camera) => camera.lensDirection == CameraLensDirection.front,
      orElse: () => cameras.first,
    );

    _cameraController = CameraController(
      frontCamera,
      ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.yuv420,
    );

    await _cameraController!.initialize();
    return _cameraController!;
  }

  @override
  Future<FaceData?> detectFace(CameraImage image) async {
    final WriteBuffer allBytes = WriteBuffer();
    for (final Plane plane in image.planes) {
      allBytes.putUint8List(plane.bytes);
    }
    final bytes = allBytes.done().buffer.asUint8List();

    final Size imageSize = Size(
      image.width.toDouble(),
      image.height.toDouble(),
    );

    //final camera = description;
    final imageRotation =
        InputImageRotationValue.fromRawValue(camera.sensorOrientation) ??
        InputImageRotation.rotation0deg;

    final inputImageFormat =
        InputImageFormatValue.fromRawValue(image.format.raw) ??
        InputImageFormat.nv21;

    final planeData = image.planes.map(
      (Plane plane) {
        return InputImagePlaneMetadata(
          bytesPerRow: plane.bytesPerRow,
          height: plane.height,
          width: plane.width,
        );
      },
    ).toList();

    final inputImageData = InputImageData(
      size: imageSize,
      imageRotation: imageRotation,
      inputImageFormat: inputImageFormat,
      planeData: planeData,
    );

    final inputImage = InputImage.fromBytes(
      bytes: bytes,
      inputImageData: inputImageData,
    );

    final faces = await _faceDetector.processImage(inputImage);
    if (faces.isEmpty) return null;

    final face = faces.first;
    final landmarks = <double>[];

    for (final landmark in face.landmarks.values) {
      if (landmark != null) {
        landmarks.add(landmark.position.x.toDouble());
        landmarks.add(landmark.position.y.toDouble());
      }
    }

    return FaceData(
      landmarks: landmarks,
      confidence: face.trackingId?.toDouble() ?? 0.0,
      timestamp: DateTime.now(),
    );
  }

  @override
  Future<void> disposeCamera() async {
    await _cameraController?.dispose();
    await _faceDetector.close();
  }

  @override
  Future<String> saveFaceData(FaceData faceData) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = path.join(directory.path, 'initial_face.json');
    final file = File(filePath);

    final jsonData = {
      'landmarks': faceData.landmarks,
      'confidence': faceData.confidence,
      'timestamp': faceData.timestamp.toIso8601String(),
    };

    await file.writeAsString(jsonEncode(jsonData));
    return filePath;
  }

  @override
  Future<FaceData?> loadFaceData(String filePath) async {
    try {
      final file = File(filePath);
      if (!await file.exists()) return null;

      final jsonString = await file.readAsString();
      final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;

      return FaceData(
        landmarks: List<double>.from(jsonData['landmarks'] as List),
        confidence: jsonData['confidence'] as double,
        timestamp: DateTime.parse(jsonData['timestamp'] as String),
      );
    } catch (e) {
      return null;
    }
  }
}
