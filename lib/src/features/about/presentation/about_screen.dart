import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  PackageInfo? _packageInfo;

  @override
  void initState() {
    super.initState();
    _loadPackageInfo();
  }

  Future<void> _loadPackageInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();
    if (mounted) {
      setState(() {
        _packageInfo = packageInfo;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.surface,
      appBar: AttendanceAppBar(
        backgroundColor: context.theme.colorScheme.surface,
        centerTitle: true,
        title: 'Acerca de',
        leading: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              // App Logo and Name
              _buildAppHeader(context),

              const SizedBox(height: DoubleSizes.size32),

              // // App Information
              // _buildAppInfo(context),
              const SizedBox(height: DoubleSizes.size32),

              // Company Information
              _buildCompanyInfo(context),

              const SizedBox(height: DoubleSizes.size32),

              // Contact Information
              _buildContactInfo(context),

              const SizedBox(height: DoubleSizes.size32),

              // Legal Information
              _buildLegalInfo(context),

              const SizedBox(height: DoubleSizes.size24),

              // Copyright
              _buildCopyright(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppHeader(BuildContext context) {
    return Column(
      children: [
        // App Icon
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: context.theme.primaryColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: context.theme.primaryColor.withValues(alpha: 0.3),
                blurRadius: 15,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: const Icon(
            Icons.business_center_rounded,
            size: 50,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 16),

        // App Name
        Text(
          'Consorcio Ejecutor El Tigre',
          style: context.theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.theme.colorScheme.onSurface,
          ),
        ),

        const SizedBox(height: 8),

        // App Description
        Text(
          'Sistema de gestión de empleados y asistencia',
          style: context.theme.textTheme.bodyLarge?.copyWith(
            color: context.theme.colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  // Widget _buildAppInfo(BuildContext context) {
  //   return _buildSection(
  //     context: context,
  //     title: 'Información de la Aplicación',
  //     children: [
  //       _buildInfoRow(
  //         context: context,
  //         icon: Icons.info_outline,
  //         label: 'Versión',
  //         value: _packageInfo?.version ?? 'Cargando...',
  //       ),
  //       _buildInfoRow(
  //         context: context,
  //         icon: Icons.build_outlined,
  //         label: 'Build',
  //         value: _packageInfo?.buildNumber ?? 'Cargando...',
  //       ),
  //       _buildInfoRow(
  //         context: context,
  //         icon: Icons.smartphone_outlined,
  //         label: 'Plataforma',
  //         value: Theme.of(context).platform.name,
  //       ),
  //       _buildInfoRow(
  //         context: context,
  //         icon: Icons.flutter_dash,
  //         label: 'Desarrollado con',
  //         value: 'Flutter',
  //       ),
  //     ],
  //   );
  // }

  Widget _buildCompanyInfo(BuildContext context) {
    return _buildSection(
      context: context,
      title: 'Información de la Empresa',
      children: [
        _buildInfoRow(
          context: context,
          icon: Icons.business,
          label: 'Empresa',
          value: 'Consorcio Ejecutor El Tigre',
        ),
        _buildInfoRow(
          context: context,
          icon: Icons.location_on_outlined,
          label: 'Ubicación',
          value: 'Iquitos, Perú',
        ),
        _buildInfoRow(
          context: context,
          icon: Icons.language,
          label: 'Sitio Web',
          value: 'www.consorcioejecutor.com',
          onTap: () => _showToast(context, 'Funcionalidad próximamente'),
        ),
      ],
    );
  }

  Widget _buildContactInfo(BuildContext context) {
    return _buildSection(
      context: context,
      title: 'Contacto y Soporte',
      children: [
        _buildInfoRow(
          context: context,
          icon: Icons.email_outlined,
          label: 'Email de Soporte',
          value: 'soporte@consorcioejecutor.com',
          onTap: () =>
              _copyToClipboard(context, 'soporte@consorcioejecutor.com'),
        ),
        _buildInfoRow(
          context: context,
          icon: Icons.phone_outlined,
          label: 'Teléfono',
          value: '+1 (555) 123-4567',
          onTap: () => _copyToClipboard(context, '+1 (555) 123-4567'),
        ),
        _buildInfoRow(
          context: context,
          icon: Icons.schedule_outlined,
          label: 'Horario de Atención',
          value: 'Lun - Vie: 9:00 AM - 6:00 PM',
        ),
      ],
    );
  }

  Widget _buildLegalInfo(BuildContext context) {
    return _buildSection(
      context: context,
      title: 'Información Legal',
      children: [
        _buildInfoRow(
          context: context,
          icon: Icons.gavel_outlined,
          label: 'Términos de Uso',
          value: 'Ver términos y condiciones',
          onTap: () => _showToast(context, 'Funcionalidad próximamente'),
        ),
        _buildInfoRow(
          context: context,
          icon: Icons.privacy_tip_outlined,
          label: 'Política de Privacidad',
          value: 'Ver política de privacidad',
          onTap: () => _showToast(context, 'Funcionalidad próximamente'),
        ),
        _buildInfoRow(
          context: context,
          icon: Icons.security_outlined,
          label: 'Licencias',
          value: 'Ver licencias de software',
          // onTap: () => _showLicenses(context),
          onTap: () => _showToast(context, 'Funcionalidad próximamente'),
        ),
      ],
    );
  }

  Widget _buildCopyright(BuildContext context) {
    final currentYear = DateTime.now().year;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.surfaceContainerHighest.withValues(
          alpha: 0.5,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(
            Icons.copyright,
            size: 20,
            color: context.theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 8),
          Text(
            '© $currentYear Mi Empresa S.A.',
            style: context.theme.textTheme.bodySmall?.copyWith(
              color: context.theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Todos los derechos reservados',
            style: context.theme.textTheme.bodySmall?.copyWith(
              color: context.theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required BuildContext context,
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.theme.colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            color: context.theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: context.theme.colorScheme.outlineVariant,
              width: 1,
            ),
          ),
          child: Column(children: children),
        ),
      ],
    );
  }

  Widget _buildInfoRow({
    required BuildContext context,
    required IconData icon,
    required String label,
    required String value,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, size: 24, color: context.theme.colorScheme.primary),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: context.theme.textTheme.bodyMedium?.copyWith(
                      color: context.theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    value,
                    style: context.theme.textTheme.bodyLarge?.copyWith(
                      color: onTap != null
                          ? context.theme.colorScheme.primary
                          : context.theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            if (onTap != null)
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: context.theme.colorScheme.onSurfaceVariant,
              ),
          ],
        ),
      ),
    );
  }

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    _showToast(context, 'Copiado al portapapeles');
  }

  void _showToast(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  // void _showLicenses(BuildContext context) {
  //   showLicensePage(
  //     context: context,
  //     applicationName: 'Consorcio Ejecutor El Tigre',
  //     applicationVersion: _packageInfo?.version ?? '1.0.0',
  //     applicationIcon: Container(
  //       width: 48,
  //       height: 48,
  //       decoration: BoxDecoration(
  //         color: context.theme.primaryColor,
  //         borderRadius: BorderRadius.circular(12),
  //       ),
  //       child: const Icon(
  //         Icons.business_center_rounded,
  //         size: 24,
  //         color: Colors.white,
  //       ),
  //     ),
  //   );
  // }
}
