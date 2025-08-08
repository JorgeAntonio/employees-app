import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Mi Perfil',
          style: textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: colorScheme.onSurface,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Show edit profile
            },
            icon: Icon(Icons.edit_rounded, color: colorScheme.onSurfaceVariant),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              // Profile header with centered design
              _buildProfileHeader(context),

              const SizedBox(height: 32),

              // Personal information section
              _buildPersonalInformationSection(context),

              const SizedBox(height: 32),

              // Contact information section
              _buildContactInformationSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

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
          'Laura Rodriguez',
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),

        const SizedBox(height: 4),

        // Job title - centered
        Text(
          'Gerente de Marketing',
          style: textTheme.titleMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),

        const SizedBox(height: 4),

        // Employee ID - centered
        Text(
          'ID: 123456',
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildPersonalInformationSection(BuildContext context) {
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
              _buildInfoItem(
                context,
                label: 'Cargo',
                value: 'Gerente de Marketing',
                isLast: false,
              ),
              _buildInfoItem(
                context,
                label: 'Área',
                value: 'Marketing',
                isLast: false,
              ),
              _buildInfoItem(
                context,
                label: 'Fecha de Ingreso',
                value: '15 de enero de 2022',
                isLast: true,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContactInformationSection(BuildContext context) {
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
              _buildInfoItem(
                context,
                label: 'Teléfono',
                value: '555-123-4567',
                isLast: false,
              ),
              _buildInfoItem(
                context,
                label: 'Email',
                value: 'laura.rodriguez@example.com',
                isLast: false,
              ),
              _buildInfoItem(
                context,
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

  Widget _buildInfoItem(
    BuildContext context, {
    required String label,
    required String value,
    required bool isLast,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : Border(
                bottom: BorderSide(color: colorScheme.outlineVariant, width: 1),
              ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Text(
              label,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          Flexible(
            child: Text(
              value,
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
