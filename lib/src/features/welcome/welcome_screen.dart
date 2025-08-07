import 'package:attendance_app/src/core/router/router.dart';
import 'package:attendance_app/src/core/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<IntroductionStep> _steps = [
    IntroductionStep(
      icon: Icons.access_time_filled_rounded,
      title: 'Bienvenido',
      subtitle: 'Sistema de Control de Asistencia',
      description: 'Gestiona tu asistencia de manera fácil y eficiente',
      color: Palette.blue,
    ),
    IntroductionStep(
      icon: Icons.login_rounded,
      title: 'Registro de Ingreso',
      subtitle: 'Registra tu llegada',
      description:
          'Marca tu hora de llegada al centro de trabajo con un solo toque',
      color: Palette.green,
    ),
    IntroductionStep(
      icon: Icons.logout_rounded,
      title: 'Registro de Salida',
      subtitle: 'Registra tu salida',
      description:
          'Registra tu hora de salida del centro de trabajo de manera rápida',
      color: Palette.orange,
    ),
    IntroductionStep(
      icon: Icons.history_rounded,
      title: 'Historial Completo',
      subtitle: 'Consulta tu historial',
      description:
          'Revisa tu historial de registros de asistencia en cualquier momento',
      color: Palette.purple,
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < _steps.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navegar al siguiente screen
      context.goNamed(Routes.signin.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: Stack(
          children: [
            // PageView content
            PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: _steps.length,
              itemBuilder: (context, index) {
                final step = _steps[index];
                return _buildIntroductionPage(step, colorScheme, textTheme);
              },
            ),

            // Page indicator
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _steps.length,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: _currentPage == index ? 24 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _currentPage == index
                          ? colorScheme.primary
                          : colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),

            // Skip button (only show if not on last page)
            if (_currentPage < _steps.length - 1)
              Positioned(
                top: 50,
                right: 24,
                child: TextButton(
                  onPressed: () {
                    _pageController.animateToPage(
                      _steps.length - 1,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    'Saltar',
                    style: textTheme.labelLarge?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
      // Floating action button (only show on last page)
      floatingActionButton: _currentPage == _steps.length - 1
          ? _buildCustomFloatingButton(colorScheme, textTheme)
          : null,
    );
  }

  Widget _buildIntroductionPage(
    IntroductionStep step,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon container
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              color: step.color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(28),
              border: Border.all(
                color: step.color.withValues(alpha: 0.3),
                width: 2,
              ),
            ),
            child: Icon(step.icon, size: 70, color: step.color),
          ),
          const SizedBox(height: 48),

          // Title
          Text(
            step.title,
            style: textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),

          // Subtitle
          Text(
            step.subtitle,
            style: textTheme.titleLarge?.copyWith(
              color: step.color,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),

          // Description
          Text(
            step.description,
            style: textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurfaceVariant,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ],
      ),
    );
  }

  Widget _buildCustomFloatingButton(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Container(
      margin: const EdgeInsets.all(24),
      child: FloatingActionButton.extended(
        onPressed: _nextPage,
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Comenzar',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: colorScheme.onPrimary,
              ),
            ),
            const SizedBox(width: 8),
            Icon(Icons.arrow_forward_rounded, color: colorScheme.onPrimary),
          ],
        ),
      ),
    );
  }
}

class IntroductionStep {
  final IconData icon;
  final String title;
  final String subtitle;
  final String description;
  final Color color;

  IntroductionStep({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.color,
  });
}
