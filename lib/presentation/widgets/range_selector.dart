import 'package:flutter/material.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';

/// Range Selector to select the range of data to display.
class RangeSelector extends StatelessWidget {
  /// Constructor for the Range Selector.
  const RangeSelector({
    /// The selected range to display.
    required this.selectedRange,

    /// The callback to change the range.
    required this.onRangeChanged,
    super.key,
  });

  /// The selected range to display.
  final ChartRange selectedRange;

  /// The callback to change the range.
  final ValueChanged<ChartRange> onRangeChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildRangeButton(
          context,
          '7 Days',
          ChartRange.sevenDays,
        ),
        _buildRangeButton(
          context,
          '30 Days',
          ChartRange.thirtyDays,
        ),
        _buildRangeButton(
          context,
          '90 Days',
          ChartRange.ninetyDays,
        ),
      ],
    );
  }

  Widget _buildRangeButton(
    BuildContext context,
    String label,
    ChartRange range,
  ) {
    final isSelected = selectedRange.days == range.days;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: ElevatedButton(
          onPressed: () => onRangeChanged(range),
          style: ElevatedButton.styleFrom(
            backgroundColor: isSelected
                ? Theme.of(context).primaryColor
                : Theme.of(context).cardColor,
            foregroundColor: isSelected
                ? Colors.white
                : Theme.of(context).textTheme.bodyMedium?.color,
            elevation: isSelected ? 4 : 1,
            padding: const EdgeInsets.symmetric(vertical: 12),
          ),
          child: Text(
            label,
            style: TextStyle(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
