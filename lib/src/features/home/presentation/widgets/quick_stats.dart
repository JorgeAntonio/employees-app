import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/home/presentation/providers/home_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuickStats extends ConsumerWidget {
  const QuickStats({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userStatsAsync = ref.watch(userStatsProvider);

    return userStatsAsync.when(
      data: (userStats) {
        final statistics = userStats.data.statistics;
        final employee = userStats.data.employee;

        return Column(
          spacing: DoubleSizes.size16,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Título con información del empleado si está disponible
            if (employee != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle(
                    title:
                        'Estadísticas de ${employee.firstName} ${employee.lastName}',
                  ),
                  if (employee.shift != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.schedule,
                            size: 16,
                            color: Colors.grey[600],
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Turno: ${employee.shift!.name}',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                ],
              )
            else
              const SectionTitle(title: 'Estadísticas rápidas'),

            Row(
              spacing: DoubleSizes.size8,
              children: [
                Expanded(
                  child: _StatCard(
                    icon: Icons.check_circle_rounded,
                    title: 'Presencias',
                    value: '${statistics.presences}',
                    subtitle: 'días trabajados',
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: _StatCard(
                    icon: Icons.cancel_rounded,
                    title: 'Ausencias',
                    value: '${statistics.absences}',
                    subtitle: 'días perdidos',
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: _StatCard(
                    icon: Icons.trending_up_rounded,
                    title: 'Puntualidad',
                    value: '${statistics.punctualityRate.toStringAsFixed(1)}%',
                    subtitle: 'promedio',
                    color: statistics.punctualityRate >= 90
                        ? Colors.green
                        : Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        );
      },
      loading: () => Column(
        spacing: DoubleSizes.size16,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Estadísticas rápidas'),
          Row(
            spacing: DoubleSizes.size8,
            children: [
              Expanded(child: _StatCardSkeleton()),
              Expanded(child: _StatCardSkeleton()),
              Expanded(child: _StatCardSkeleton()),
            ],
          ),
        ],
      ),
      error: (error, stackTrace) => Column(
        spacing: DoubleSizes.size16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Estadísticas rápidas'),
          Container(
            padding: const EdgeInsets.all(DoubleSizes.size16),
            decoration: BoxDecoration(
              color: Colors.red.shade50,
              borderRadius: BorderRadius.circular(DoubleSizes.size12),
              border: Border.all(color: Colors.red.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.error_outline, color: Colors.red.shade600),
                    const SizedBox(width: DoubleSizes.size8),
                    Expanded(
                      child: Text(
                        'No se pudieron cargar las estadísticas',
                        style: TextStyle(
                          color: Colors.red.shade700,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: DoubleSizes.size8),
                Text(
                  'Desliza hacia abajo para intentar de nuevo',
                  style: TextStyle(color: Colors.red.shade600, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
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
      height: 150,
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(DoubleSizes.size16),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
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
          Column(
            children: [
              Text(
                title,
                style: textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                subtitle,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatCardSkeleton extends StatelessWidget {
  const _StatCardSkeleton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

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
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          const SizedBox(height: DoubleSizes.size8),
          Container(
            width: 40,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: DoubleSizes.size2),
          Container(
            width: 60,
            height: 14,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          const SizedBox(height: DoubleSizes.size2),
          Container(
            width: 50,
            height: 12,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ],
      ),
    );
  }
}
