import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:attendance_app/src/features/profile/presentation/widgets/info_item.dart';
import 'package:flutter/material.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key, required this.user});

  final AuthSessionUser user;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.appColorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: 'Información de Contacto'),

        const SizedBox(height: 16),

        // Contact information items
        Container(
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: colorScheme.outlineVariant, width: 1),
          ),
          child: Column(
            children: [
              InfoItem(
                label: 'Teléfono',
                value: user.employee.phone ?? 'N/A',
                isLast: false,
              ),
              InfoItem(label: 'Email', value: user.email, isLast: false),
              InfoItem(
                label: 'Dirección',
                value: '123 Calle Principal, Ciudad, CP 12345',
                isLast: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
