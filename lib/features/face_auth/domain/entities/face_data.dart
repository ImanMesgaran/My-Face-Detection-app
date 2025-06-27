import 'package:equatable/equatable.dart';

class FaceData extends Equatable {
  final List<double> landmarks;
  final double confidence;
  final DateTime timestamp;

  const FaceData({
    required this.landmarks,
    required this.confidence,
    required this.timestamp,
  });

  @override
  List<Object?> get props => [landmarks, confidence, timestamp];
}
