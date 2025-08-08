import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/edge_insets.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title, this.onPressed});

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: AppInsets.h16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.appTextTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed == null
                ? const SizedBox()
                : TextButton(
                    onPressed: onPressed,
                    child: Text(
                      'See all',
                      style: context.appTextTheme.bodyMedium!.copyWith(
                        color: context.appColorScheme.primary,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
