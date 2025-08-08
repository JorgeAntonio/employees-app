import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/layout/gaps.dart';
import 'package:attendance_app/src/features/history/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final types = ['Semana', 'Mes', 'Año'];
final statuses = ['Todos', 'Presente', 'Ausente', 'Tardanza'];

class FiltersBottomSheet extends StatelessWidget {
  const FiltersBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.3,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(DoubleSizes.size16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          GoRouter.of(context).pop();
                        },
                        child: Text(
                          'Limpiar',
                          style: context.appTextTheme.titleMedium,
                        ),
                      ),
                      Text('Filtros', style: context.appTextTheme.titleMedium),
                      TextButton(
                        onPressed: () {
                          GoRouter.of(context).pop();
                        },
                        child: Text(
                          'Aplicar',
                          style: context.appTextTheme.titleMedium!.copyWith(
                            color: context.appColorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: DoubleSizes.size8, thickness: 1),
                  Column(
                    spacing: DoubleSizes.size16,
                    children: [
                      Gaps.gap4,
                      TitleText(title: 'Ver por'),
                      _ButtonsChipFilters(filters: types),
                      TitleText(title: 'Estado'),
                      _CheckboxFilters(filters: statuses),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ButtonsChipFilters extends StatelessWidget {
  const _ButtonsChipFilters({required this.filters});

  final List<String> filters;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: DoubleSizes.size8,
      runSpacing: DoubleSizes.size8,
      alignment: WrapAlignment.center,
      children: filters
          .map(
            (filter) => FilterChip(
              label: Text(filter),
              onSelected: (isSelected) {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(DoubleSizes.size16),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _CheckboxFilters extends StatelessWidget {
  const _CheckboxFilters({required this.filters});

  final List<String> filters;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: filters
          .map(
            (filter) => CheckboxListTile(
              dense: true,
              title: Text(filter),
              value: false,
              onChanged: (value) {},
            ),
          )
          .toList(),
    );
  }
}
