import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:flutter/material.dart';

class NextCheckCard extends StatelessWidget {
  final bool isCheckedIn;
  final Duration timeRemaining;

  const NextCheckCard({
    super.key,
    required this.isCheckedIn,
    required this.timeRemaining,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final now = DateTime.now();
    final isWorkDay = now.weekday >= 1 && now.weekday <= 5;

    String nextCheckText = '';
    String timeRemainingText = '';
    IconData nextIcon = Icons.access_time_rounded;
    Color nextColor = colorScheme.primary;

    if (!isWorkDay) {
      nextCheckText = 'Próximo día laboral';
      timeRemainingText = 'Lunes 08:00';
      nextIcon = Icons.weekend_rounded;
      nextColor = colorScheme.tertiary;
    } else if (!isCheckedIn) {
      nextCheckText = 'Próximo marcado';
      timeRemainingText = 'Ingreso - 08:00';
      nextIcon = Icons.login_rounded;
      nextColor = colorScheme.primary;
    } else {
      nextCheckText = 'Próximo marcado';
      timeRemainingText = 'Salida - 18:00';
      nextIcon = Icons.logout_rounded;
      nextColor = colorScheme.error;
    }

    return Container(
      padding: const EdgeInsets.all(DoubleSizes.size16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(DoubleSizes.size16),
        border: Border.all(color: nextColor.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(DoubleSizes.size12),
                decoration: BoxDecoration(
                  color: nextColor.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(DoubleSizes.size12),
                ),
                child: Icon(
                  nextIcon,
                  color: nextColor,
                  size: DoubleSizes.size24,
                ),
              ),
              const SizedBox(width: DoubleSizes.size16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nextCheckText,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: DoubleSizes.size4),
                    Text(
                      timeRemainingText,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: DoubleSizes.size16),

          // Countdown timer
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: DoubleSizes.size20,
              vertical: DoubleSizes.size16,
            ),
            decoration: BoxDecoration(
              color: nextColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(DoubleSizes.size16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.timer_rounded,
                  size: DoubleSizes.size24,
                  color: nextColor,
                ),
                const SizedBox(width: DoubleSizes.size12),
                Text(
                  _formatDuration(timeRemaining),
                  style: textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: nextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    if (duration.isNegative) {
      return 'Ya disponible';
    }

    final hours = duration.inHours;
    final minutes = duration.inMinutes % 60;
    final seconds = duration.inSeconds % 60;

    if (hours > 0) {
      return '${hours}h ${minutes}m ${seconds}s';
    } else if (minutes > 0) {
      return '${minutes}m ${seconds}s';
    } else {
      return '${seconds}s';
    }
  }
}
