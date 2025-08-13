import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:attendance_app/src/features/profile/presentation/widgets/info_item.dart';
import 'package:flutter/material.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key, required this.user});

  final AuthSessionUser user;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.appColorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: 'Información Personal'),

        const SizedBox(height: 16),

        // Personal information items
        Container(
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: colorScheme.outlineVariant, width: 1),
          ),
          child: Column(
            children: [
              InfoItem(
                label: 'Cargo',
                value: user.employee.position,
                isLast: false,
              ),
              InfoItem(
                label: 'Área',
                value: user.employee.department,
                isLast: false,
              ),
              InfoItem(
                label: 'Fecha de Ingreso',
                value: user.employee.shiftId ?? 'N/A',
                isLast: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
