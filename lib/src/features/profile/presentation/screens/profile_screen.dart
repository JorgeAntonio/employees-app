import 'package:attendance_app/src/core/router/routes.dart';
import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/session_provider.dart';
import 'package:attendance_app/src/features/profile/presentation/widgets/contact_information.dart';
import 'package:attendance_app/src/features/profile/presentation/widgets/personal_information.dart';
import 'package:attendance_app/src/features/profile/presentation/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
          appBar: AttendanceAppBar(
            backgroundColor: context.theme.colorScheme.surface,
            centerTitle: true,
            title: 'Mi Perfil',
            leading: true,
            actions: [
              IconButton(
                onPressed: () {
                  context.pushNamed(Routes.editProfile.name);
                },
                icon: const Icon(Icons.edit_rounded),
                tooltip: 'Editar Perfil',
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
