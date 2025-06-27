import 'package:flutter/material.dart';
import '../error/failures.dart';

class AppErrorWidget extends StatelessWidget {
  final Failure failure;
  const AppErrorWidget({Key? key, required this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        failure.message,
        style: const TextStyle(color: Colors.red),
        textAlign: TextAlign.center,
      ),
    );
  }
}
