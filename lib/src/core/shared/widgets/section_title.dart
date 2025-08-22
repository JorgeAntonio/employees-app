import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.appTextTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
    this.color,
    this.style,
    this.isTitle = false,
  });

  final String title;
  final Color? color;
  final TextStyle? style;
  final bool isTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          style ??
          (isTitle
                  ? context.appTextTheme.titleMedium
                  : context.appTextTheme.labelLarge)
              ?.copyWith(
                color:
                    color ??
                    context.appColorScheme.onSurface.withValues(alpha: 0.5),
                fontWeight: isTitle ? FontWeight.w600 : null,
              ),
    );
  }
}
