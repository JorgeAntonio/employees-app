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

  void _showFiltersBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => _FiltersBottomSheet(
        startDate: startDate,
        endDate: endDate,
        onFiltersChanged: onFiltersChanged,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton.icon(
        onPressed: () => _showFiltersBottomSheet(context),
        icon: const Icon(Icons.filter_list),
        label: const Text('Filtros'),
      ),
    );
  }
}

class _FiltersBottomSheet extends StatefulWidget {
  final DateTime? startDate;
  final DateTime? endDate;
  final Function(DateTime?, DateTime?) onFiltersChanged;

  const _FiltersBottomSheet({
    required this.startDate,
    required this.endDate,
    required this.onFiltersChanged,
  });

  @override
  State<_FiltersBottomSheet> createState() => _FiltersBottomSheetState();
}

class _FiltersBottomSheetState extends State<_FiltersBottomSheet> {
  DateTime? _tempStartDate;
  DateTime? _tempEndDate;

  @override
  void initState() {
    super.initState();
    _tempStartDate = widget.startDate;
    _tempEndDate = widget.endDate;
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd/MM/yyyy');

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _tempStartDate = null;
                        _tempEndDate = null;
                      });
                    },
                    child: const Text('Limpiar'),
                  ),
                  Text(
                    'Filtros',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      widget.onFiltersChanged(_tempStartDate, _tempEndDate);
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Aplicar',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 16),
              // Date filters
              Row(
                children: [
                  Expanded(
                    child: _DatePickerField(
                      label: 'Fecha Inicio',
                      date: _tempStartDate,
                      dateFormat: dateFormat,
                      onDateSelected: (date) {
                        setState(() {
                          _tempStartDate = date;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _DatePickerField(
                      label: 'Fecha Fin',
                      date: _tempEndDate,
                      dateFormat: dateFormat,
                      onDateSelected: (date) {
                        setState(() {
                          _tempEndDate = date;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Quick filters
              ElevatedButton.icon(
                onPressed: () {
                  final now = DateTime.now();
                  final thirtyDaysAgo = now.subtract(const Duration(days: 30));
                  setState(() {
                    _tempStartDate = thirtyDaysAgo;
                    _tempEndDate = now;
                  });
                },
                icon: const Icon(Icons.date_range),
                label: const Text('Últimos 30 días'),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
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
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
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
                Icon(Icons.calendar_today, size: 20, color: Colors.grey[600]),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    date != null
                        ? dateFormat.format(date!)
                        : 'Seleccionar fecha',
                    style: TextStyle(
                      color: date != null ? Colors.black87 : Colors.grey[600],
                    ),
                  ),
                ),
                if (date != null)
                  GestureDetector(
                    onTap: () => onDateSelected(null),
                    child: Icon(Icons.clear, size: 20, color: Colors.grey[600]),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
