import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:flutter/material.dart';

/// Widget reutilizable para mostrar información de asistencia
/// Usado tanto en la lista de asistencias recientes como en el historial
/// Widget skeleton para loading state
class AttendanceCardSkeleton extends StatelessWidget {
  final EdgeInsets? margin;

  const AttendanceCardSkeleton({super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(bottom: DoubleSizes.size8),
      padding: const EdgeInsets.all(DoubleSizes.size16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(DoubleSizes.size12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Fecha skeleton
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(DoubleSizes.size8),
            ),
          ),
          const SizedBox(width: DoubleSizes.size16),

          // Información skeleton
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 16,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: DoubleSizes.size8),
                Container(
                  height: 12,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                const SizedBox(height: DoubleSizes.size4),
                Container(
                  height: 12,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ],
            ),
          ),

          // Duración skeleton
          Container(
            height: 16,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}

class AttendanceCardLoading extends StatelessWidget {
  const AttendanceCardLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: DoubleSizes.size8),
        AttendanceCardSkeleton(),
        SizedBox(height: DoubleSizes.size8),
        AttendanceCardSkeleton(),
        SizedBox(height: DoubleSizes.size8),
        AttendanceCardSkeleton(),
      ],
    );
  }
}
