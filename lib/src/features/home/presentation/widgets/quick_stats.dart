import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:flutter/material.dart';

class QuickStats extends StatelessWidget {
  const QuickStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: DoubleSizes.size16,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Estadísticas rápidas'),
        Row(
          spacing: DoubleSizes.size8,
          children: [
            Expanded(
              child: _StatCard(
                icon: Icons.check_circle_rounded,
                title: 'Presencias',
                value: '22',
                subtitle: 'Este mes',
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Expanded(
              child: _StatCard(
                icon: Icons.cancel_rounded,
                title: 'Ausencias',
                value: '3',
                subtitle: 'Este mes',
                color: Theme.of(context).colorScheme.error,
              ),
            ),
            Expanded(
              child: _StatCard(
                icon: Icons.trending_up_rounded,
                title: 'Puntualidad',
                value: '95%',
                subtitle: 'Promedio',
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String subtitle;
  final Color color;

  const _StatCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Container(
      padding: const EdgeInsets.all(DoubleSizes.size8),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(DoubleSizes.size16),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        children: [
          Icon(icon, size: 28, color: color),
          const SizedBox(height: DoubleSizes.size8),
          Text(
            value,
            style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: DoubleSizes.size2),
          Text(
            title,
            style: textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: DoubleSizes.size2),
          Text(
            subtitle,
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
