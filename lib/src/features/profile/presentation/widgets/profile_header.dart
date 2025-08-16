import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.user});

  final AuthSessionUser user;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.appColorScheme;
    final textTheme = context.appTextTheme;

    return Column(
      children: [
        // Profile avatar - centered
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: const Color(0xFFF5E6D3), // Light peach background
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.person_rounded,
            size: 60,
            color: const Color(0xFF8B7355),
          ),
        ),

        const SizedBox(height: 16),

        // Name - centered
        Text(
          '${user.employee.firstName} ${user.employee.lastName}',
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),

        const SizedBox(height: 4),

        // Job title - centered
        Text(
          user.employee.position,
          style: textTheme.titleMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),

        const SizedBox(height: 4),

        // Employee ID - centered
        Text(
          user.employee.department,
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
