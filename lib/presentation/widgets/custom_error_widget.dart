import 'package:flutter/material.dart';

/// Custom Error Widget to display when there is an error.
class CustomErrorWidget extends StatelessWidget {
  /// Constructor for the Custom Error Widget.
  const CustomErrorWidget({
    /// The error message to display.
    required this.message,

    /// The callback to retry the operation.
    required this.onRetry,
    super.key,
  });

  /// The error message to display.
  final String message;

  /// The callback to retry the operation.
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Error',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
