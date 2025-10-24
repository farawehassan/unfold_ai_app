import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';

/// A card widget that displays selected entry details.
class SelectedEntryCard extends StatelessWidget {
  /// Creates a SelectedEntryCard.
  const SelectedEntryCard({
    required this.biometricData,
    this.journalEntry,
    this.onClose,
    super.key,
  });

  /// The biometric data to display.
  final BiometricData biometricData;

  /// The journal entry to display.
  final JournalEntry? journalEntry;

  /// Callback when the close button is pressed.
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              _getMoodColor(journalEntry?.mood ?? 0).withValues(alpha: 0.1),
              _getMoodColor(journalEntry?.mood ?? 0).withValues(alpha: 0.05),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat('EEEE, MMMM d, yyyy')
                          .format(DateTime.parse(biometricData.date)),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? Colors.white : Colors.black87,
                          ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Heart Rate Variability (HRV): ${biometricData.hrv}',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: isDarkMode
                                ? Colors.grey[300]
                                : Colors.grey[600],
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Resting Heart Rate (RHR): ${biometricData.rhr}',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: isDarkMode
                                ? Colors.grey[300]
                                : Colors.grey[600],
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Steps: ${biometricData.steps}',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: isDarkMode
                                ? Colors.grey[300]
                                : Colors.grey[600],
                          ),
                    ),
                    const SizedBox(height: 8),
                    if (journalEntry != null) ...[
                      Row(
                        children: [
                          Text(
                            'Mood: ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: isDarkMode
                                      ? Colors.grey[300]
                                      : Colors.grey[600],
                                ),
                          ),
                          Text(
                            _getMoodEmoji(journalEntry?.mood ?? 0),
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            journalEntry?.note ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: _getMoodColor(journalEntry?.mood ?? 0),
                                ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
              // Close button
              IconButton(
                onPressed: onClose,
                icon: Icon(
                  Icons.close,
                  color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Get the appropriate color for the mood.
  Color _getMoodColor(int mood) {
    switch (mood) {
      case 1:
        return Colors.red; // Very bad
      case 2:
        return Colors.orange; // Bad
      case 3:
        return Colors.yellow; // Neutral
      case 4:
        return Colors.lightGreen; // Good
      case 5:
        return Colors.green; // Very good
      default:
        return Colors.grey;
    }
  }

  /// Get the appropriate emoji for the mood.
  String _getMoodEmoji(int mood) {
    switch (mood) {
      case 1:
        return '😢'; // Very bad
      case 2:
        return '😔'; // Bad
      case 3:
        return '😐'; // Neutral
      case 4:
        return '😊'; // Good
      case 5:
        return '😄'; // Very good
      default:
        return '😶'; // Unknown
    }
  }
}
