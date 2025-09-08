import 'package:attendance_app/src/core/router/routes.dart';
import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:attendance_app/src/features/auth/domain/entities/profile_entity.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/session_provider.dart';
import 'package:attendance_app/src/features/profile/presentation/providers/profile_api_providers.dart';
import 'package:attendance_app/src/features/profile/presentation/widgets/contact_information.dart';
import 'package:attendance_app/src/features/profile/presentation/widgets/personal_information.dart';
import 'package:attendance_app/src/features/profile/presentation/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    // Cargar el perfil desde la API al inicializar
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(profileNotifierProvider.notifier).loadProfile();
    });
  }

  // Helper para obtener los datos a mostrar (API primero, sesión como fallback)
  AuthSessionUser _getCurrentUserData(
    AuthSessionUser sessionUser,
    ProfileEntityResponse? apiProfile,
  ) {
    if (apiProfile?.profile.employee != null) {
      final apiEmployee = apiProfile!.profile.employee!;
      // Crear un AuthSessionUser usando los datos de la API
      return AuthSessionUser(
        apiProfile.profile.id,
        apiProfile.profile.email,
        apiProfile.profile.role,
        AuthSessionEmployee(
          id: apiEmployee.id,
          userId: apiEmployee.userId,
          firstName: apiEmployee.firstName,
          lastName: apiEmployee.lastName,
          dni: apiEmployee.dni,
          phone: apiEmployee.phone,
          photoUrl: apiEmployee.photoUrl,
          position: apiEmployee.position,
          department: apiEmployee.department,
          shiftId: apiEmployee.shiftId,
        ),
      );
    }
    // Fallback a datos de sesión
    return sessionUser;
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    final profileState = ref.watch(profileNotifierProvider);

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
                  ref.read(profileNotifierProvider.notifier).refreshProfile();
                },
                icon: const Icon(Icons.refresh_rounded),
                tooltip: 'Actualizar Perfil',
              ),
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
            child: RefreshIndicator(
              onRefresh: () async {
                await ref
                    .read(profileNotifierProvider.notifier)
                    .refreshProfile();
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(24),
                child: Builder(
                  builder: (context) {
                    // Obtener datos actuales (API o sesión como fallback)
                    final currentUser = _getCurrentUserData(
                      authSession.data.user,
                      profileState.value,
                    );

                    return Column(
                      spacing: DoubleSizes.size32,
                      children: [
                        // Mostrar indicador de carga para datos de API si está cargando
                        profileState.when(
                          data: (profile) => profile != null
                              ? Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade50,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.green.shade200,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.cloud_done,
                                        color: Colors.green.shade600,
                                        size: 16,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        'Datos actualizados',
                                        style: TextStyle(
                                          color: Colors.green.shade700,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : const SizedBox.shrink(),
                          loading: () => Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue.shade200),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation(
                                      Colors.blue.shade600,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Actualizando...',
                                  style: TextStyle(
                                    color: Colors.blue.shade700,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          error: (error, stack) => Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.orange.shade50,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.orange.shade200),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.warning,
                                  color: Colors.orange.shade600,
                                  size: 16,
                                ),
                                const SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    'Mostrando datos de caché. Error: $error',
                                    style: TextStyle(
                                      color: Colors.orange.shade700,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        ProfileHeader(user: currentUser),
                        PersonalInformation(user: currentUser),
                        ContactInformation(user: currentUser),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
