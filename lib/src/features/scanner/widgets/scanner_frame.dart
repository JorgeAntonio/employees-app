import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:flutter/material.dart';

class ScannerFrame extends StatelessWidget {
  const ScannerFrame({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Container(
      width: 280,
      height: 320,
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.15),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          // Scanner header with camera
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 16),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.camera_alt_rounded,
                    size: 18,
                    color: colorScheme.onPrimary,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'Scanner QR',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurface,
                  ),
                ),
                const Spacer(),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
          ),

          // Scanner screen area
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerLow,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: colorScheme.outlineVariant.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: Stack(
                children: [
                  // Scanning overlay
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: colorScheme.primary.withValues(alpha: 0.3),
                        width: 2,
                      ),
                    ),
                  ),

                  // Corner indicators
                  Positioned(
                    top: 8,
                    left: 8,
                    child: _buildCornerIndicator(colorScheme, true, true),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: _buildCornerIndicator(colorScheme, true, false),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: _buildCornerIndicator(colorScheme, false, true),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: _buildCornerIndicator(colorScheme, false, false),
                  ),

                  // QR Code placeholder
                  Center(
                    child: Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        color: colorScheme.onSurface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.qr_code_rounded,
                          size: 80,
                          color: colorScheme.surface,
                        ),
                      ),
                    ),
                  ),

                  // Scanning line animation
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            colorScheme.primary,
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Scanner handle
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHigh,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: DoubleSizes.size8,
              children: [
                Icon(
                  Icons.info_outline_rounded,
                  color: colorScheme.onSurfaceVariant,
                  size: 20,
                ),
                Text(
                  'Este es un QR unico para tu asistencia',
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCornerIndicator(
    ColorScheme colorScheme,
    bool isTop,
    bool isLeft,
  ) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        border: Border(
          top: isTop
              ? BorderSide(color: colorScheme.primary, width: 3)
              : BorderSide.none,
          bottom: !isTop
              ? BorderSide(color: colorScheme.primary, width: 3)
              : BorderSide.none,
          left: isLeft
              ? BorderSide(color: colorScheme.primary, width: 3)
              : BorderSide.none,
          right: !isLeft
              ? BorderSide(color: colorScheme.primary, width: 3)
              : BorderSide.none,
        ),
      ),
    );
  }
}
