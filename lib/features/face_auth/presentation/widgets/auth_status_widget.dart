import 'package:flutter/material.dart';

class AuthStatusWidget extends StatelessWidget {
  final bool isAuthenticated;

  const AuthStatusWidget({
    Key? key,
    required this.isAuthenticated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            isAuthenticated ? Icons.check_circle : Icons.cancel,
            color: isAuthenticated ? Colors.green : Colors.red,
            size: 100,
          ),
          const SizedBox(height: 20),
          Text(
            isAuthenticated ? 'User Authenticated' : 'User Not Authenticated',
            style: TextStyle(
              color: isAuthenticated ? Colors.green : Colors.red,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Back to Home'),
          ),
        ],
      ),
    );
  }
}
