import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/session_provider.dart';
import 'package:attendance_app/src/features/profile/presentation/widgets/contact_information.dart';
import 'package:attendance_app/src/features/profile/presentation/widgets/personal_information.dart';
import 'package:attendance_app/src/features/profile/presentation/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider);

    return session.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, stack) =>
          Scaffold(body: Center(child: Text('Error: $error'))),
      data: (authSession) {
        if (authSession == null) {
          return const Scaffold(
            body: Center(child: Text('No hay sesión activa')),
          );
        }

        return Scaffold(
          backgroundColor: context.theme.colorScheme.surface,
          appBar: AppBar(
            backgroundColor: context.theme.colorScheme.surface,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Mi Perfil',
              style: context.theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: context.theme.colorScheme.onSurface,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  // TODO: Editar perfil
                },
                icon: Icon(
                  Icons.edit_rounded,
                  color: context.theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                spacing: DoubleSizes.size32,
                children: [
                  ProfileHeader(user: authSession.data.user),
                  PersonalInformation(user: authSession.data.user),
                  ContactInformation(user: authSession.data.user),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
