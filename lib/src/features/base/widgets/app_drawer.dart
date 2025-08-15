import 'package:attendance_app/src/core/router/routes.dart';
import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/auth_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppDrawer extends HookConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = context.appColorScheme;
    final textTheme = context.appTextTheme;

    final session = ref.watch(authStateProvider);

    final menuItems = [
      {
        'icon': Icons.dashboard_rounded,
        'title': 'Dashboard',
        'subtitle': 'Ver el dashboard de asistencia',
        'onTap': () => context.pushNamed(Routes.dashboard.name),
      },
      {
        'icon': Icons.qr_code_2_rounded,
        'title': 'Leer Código QR',
        'subtitle': 'Escanear código QR con la cámara',
        'onTap': () => context.pushNamed(Routes.scanner.name),
      },
      {
        'icon': Icons.qr_code_scanner_rounded,
        'title': 'Validar Código QR',
        'subtitle': 'Validar código QR manual',
        'onTap': () => context.pushNamed(Routes.validateCode.name),
      },
      {
        'icon': Icons.check_circle_rounded,
        'title': 'Confirmar Asistencia',
        'subtitle': 'Confirmar asistencia con código manual',
        'onTap': () => context.pushNamed(Routes.confirmAttendance.name),
      },
      {
        'icon': Icons.notifications_rounded,
        'title': 'Notificaciones',
        'subtitle': 'Configurar alertas de asistencia',
        'onTap': () {},
      },
      {
        'icon': Icons.security_rounded,
        'title': 'Seguridad',
        'subtitle': 'Cambiar contraseña y configuración',
        'onTap': () {},
      },
      {
        'icon': Icons.help_rounded,
        'title': 'Ayuda y Soporte',
        'subtitle': 'Centro de ayuda y contacto',
        'onTap': () {},
      },
      {
        'icon': Icons.info_rounded,
        'title': 'Acerca de',
        'subtitle': 'Información de la aplicación',
        'onTap': () {},
      },
      {
        'icon': Icons.logout_rounded,
        'title': 'Cerrar Sesión',
        'subtitle': 'Salir de la aplicación',
        'isDestructive': true,
        'onTap': () {
          ref.read(authStateProvider.notifier).signOut();
        },
      },
    ];

    return session.when(
      loading: () =>
          const Drawer(child: Center(child: CircularProgressIndicator())),
      error: (error, stack) =>
          Drawer(child: Center(child: Text('Error: $error'))),
      data: (authSession) {
        if (authSession == null) {
          return const Drawer(
            child: Center(child: Text('No hay sesión activa')),
          );
        }

        return _buildDrawer(
          context,
          colorScheme,
          textTheme,
          menuItems,
          authSession,
        );
      },
    );
  }

  Widget _buildDrawer(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    List<Map<String, dynamic>> menuItems,
    AuthSession authSession,
  ) {
    final user = authSession.data.user;

    return Drawer(
      width: context.screenWidth * 0.8,
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: colorScheme.primary),
            child: Column(
              spacing: DoubleSizes.size8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(DoubleSizes.size12),
                  decoration: BoxDecoration(
                    color: colorScheme.secondary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person_rounded,
                    size: DoubleSizes.size32,
                    color: colorScheme.onPrimary,
                  ),
                ),
                ListTile(
                  onTap: () {
                    context.pushNamed(Routes.profile.name);
                  },
                  title: Text(
                    '${user.employee.firstName} ${user.employee.lastName}',
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onPrimary,
                    ),
                  ),
                  subtitle: Text(
                    user.employee.position,
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onPrimary.withValues(alpha: 0.8),
                    ),
                  ),
                  trailing: Icon(
                    Icons.chevron_right_rounded,
                    color: colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: menuItems.length,
            separatorBuilder: (context, index) => Divider(
              height: 1,
              color: colorScheme.outlineVariant,
              indent: 16,
              endIndent: 16,
            ),
            itemBuilder: (context, index) {
              final item = menuItems[index];
              final isDestructive = item['isDestructive'] == true;

              return ListTile(
                onTap: item['onTap'] as void Function(),
                leading: Icon(
                  item['icon'] as IconData,
                  color: isDestructive
                      ? colorScheme.error
                      : colorScheme.onSurfaceVariant,
                ),
                title: Text(
                  item['title'] as String,
                  style: textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: isDestructive
                        ? colorScheme.error
                        : colorScheme.onSurface,
                  ),
                ),
                subtitle: Text(
                  item['subtitle'] as String,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right_rounded,
                  color: colorScheme.onSurfaceVariant,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
