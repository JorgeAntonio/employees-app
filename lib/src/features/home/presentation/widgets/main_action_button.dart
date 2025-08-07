import 'package:flutter/material.dart';

class MainActionButton extends StatelessWidget {
  final bool isCheckedIn;
  final VoidCallback onPressed;

  const MainActionButton({
    super.key,
    required this.isCheckedIn,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isCheckedIn
              ? [colorScheme.error, colorScheme.error.withValues(alpha: 0.8)]
              : [
                  colorScheme.primary,
                  colorScheme.primary.withValues(alpha: 0.8),
                ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: (isCheckedIn ? colorScheme.error : colorScheme.primary)
                .withValues(alpha: 0.3),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(20),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  isCheckedIn ? Icons.logout_rounded : Icons.login_rounded,
                  size: 28,
                  color: colorScheme.onPrimary,
                ),
                const SizedBox(width: 12),
                Text(
                  isCheckedIn ? 'Registrar Salida' : 'Registrar Ingreso',
                  style: textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
