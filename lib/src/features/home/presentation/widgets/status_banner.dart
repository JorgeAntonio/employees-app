import 'package:flutter/material.dart';

class StatusBanner extends StatelessWidget {
  final bool isCheckedIn;
  final DateTime? checkInTime;

  const StatusBanner({super.key, required this.isCheckedIn, this.checkInTime});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final now = DateTime.now();
    final isWorkDay = now.weekday >= 1 && now.weekday <= 5;
    final hasCheckedToday =
        checkInTime != null &&
        checkInTime!.day == now.day &&
        checkInTime!.month == now.month &&
        checkInTime!.year == now.year;

    Color bannerColor;
    IconData bannerIcon;
    String bannerText;
    String bannerSubtext;

    if (!isWorkDay) {
      bannerColor = colorScheme.tertiary;
      bannerIcon = Icons.weekend_rounded;
      bannerText = 'Fin de semana';
      bannerSubtext = 'Disfruta tu descanso';
    } else if (hasCheckedToday) {
      bannerColor = colorScheme.primary;
      bannerIcon = Icons.check_circle_rounded;
      bannerText = 'Asistencia registrada';
      bannerSubtext = '¡Excelente trabajo!';
    } else {
      bannerColor = colorScheme.error;
      bannerIcon = Icons.schedule_rounded;
      bannerText = 'Pendiente de marcar';
      bannerSubtext = 'No olvides registrar tu asistencia';
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bannerColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: bannerColor.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: bannerColor.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(bannerIcon, color: bannerColor, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bannerText,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: bannerColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  bannerSubtext,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
