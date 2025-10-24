import 'package:flutter/material.dart';

/// Custom Loading Widget to display when loading data.
class CustomLoadingWidget extends StatelessWidget {
  /// Constructor for the Custom Loading Widget.
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16),
          Text('Loading biometric data...'),
        ],
      ),
    );
  }
}
