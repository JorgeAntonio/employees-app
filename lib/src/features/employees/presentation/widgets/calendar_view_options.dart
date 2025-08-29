import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/calendar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarViewOptions {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(DoubleSizes.size24),
        ),
      ),
      builder: (context) => const _CalendarViewOptionsContent(),
    );
  }
}

class _CalendarViewOptionsContent extends ConsumerWidget {
  const _CalendarViewOptionsContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calendarNotifierProvider);
    final notifier = ref.read(calendarNotifierProvider.notifier);
    final mode = state.viewMode;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: DoubleSizes.size24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Seleccionar Vista',
            style: context.appTextTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.view_week),
                title: const Text('Vista Semanal'),
                trailing: mode == 'semana' ? const Icon(Icons.check) : null,
                onTap: () {
                  notifier.setViewMode('semana');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.calendar_view_day),
                title: const Text('Vista de 15 días'),
                trailing: mode == 'quincena' ? const Icon(Icons.check) : null,
                onTap: () {
                  notifier.setViewMode('quincena');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.calendar_month),
                title: const Text('Vista Mensual'),
                trailing: mode == 'mes' ? const Icon(Icons.check) : null,
                onTap: () {
                  notifier.setViewMode('mes');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
