import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AttendanceHistoryFilters extends StatelessWidget {
  final DateTime? startDate;
  final DateTime? endDate;
  final Function(DateTime?, DateTime?) onFiltersChanged;

  const AttendanceHistoryFilters({
    super.key,
    required this.startDate,
    required this.endDate,
    required this.onFiltersChanged,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd/MM/yyyy');

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Filtros',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _DatePickerField(
                  label: 'Fecha Inicio',
                  date: startDate,
                  dateFormat: dateFormat,
                  onDateSelected: (date) {
                    onFiltersChanged(date, endDate);
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _DatePickerField(
                  label: 'Fecha Fin',
                  date: endDate,
                  dateFormat: dateFormat,
                  onDateSelected: (date) {
                    onFiltersChanged(startDate, date);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  onFiltersChanged(null, null);
                },
                icon: const Icon(Icons.clear),
                label: const Text('Limpiar Filtros'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  foregroundColor: Colors.black87,
                ),
              ),
              const SizedBox(width: 12),
              ElevatedButton.icon(
                onPressed: () {
                  final now = DateTime.now();
                  final thirtyDaysAgo = now.subtract(const Duration(days: 30));
                  onFiltersChanged(thirtyDaysAgo, now);
                },
                icon: const Icon(Icons.date_range),
                label: const Text('Últimos 30 días'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DatePickerField extends StatelessWidget {
  final String label;
  final DateTime? date;
  final DateFormat dateFormat;
  final Function(DateTime?) onDateSelected;

  const _DatePickerField({
    required this.label,
    required this.date,
    required this.dateFormat,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        InkWell(
          onTap: () async {
            final selectedDate = await showDatePicker(
              context: context,
              initialDate: date ?? DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime.now(),
            );
            if (selectedDate != null) {
              onDateSelected(selectedDate);
            }
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 20,
                  color: Colors.grey[600],
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    date != null ? dateFormat.format(date!) : 'Seleccionar fecha',
                    style: TextStyle(
                      color: date != null ? Colors.black87 : Colors.grey[600],
                    ),
                  ),
                ),
                if (date != null)
                  GestureDetector(
                    onTap: () => onDateSelected(null),
                    child: Icon(
                      Icons.clear,
                      size: 20,
                      color: Colors.grey[600],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}