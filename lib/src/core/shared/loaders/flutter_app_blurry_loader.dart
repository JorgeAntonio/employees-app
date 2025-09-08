import 'dart:ui' show ImageFilter;

import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/gaps.dart';
import 'package:flutter/material.dart';

Future<T> showLoader<T>(
  BuildContext context,
  Future<T> future, {
  String? text,
}) async {
  FlutterAppBlurryLoader.show(context, text: text);
  try {
    final result = await future;
    return result;
  } finally {
    if (context.mounted) {
      FlutterAppBlurryLoader.hide(context);
    }
  }
}

class FlutterAppBlurryLoader extends StatelessWidget {
  const FlutterAppBlurryLoader({
    super.key,
    this.fallbackCloseDuration,
    this.tweenAnimationDuration,
    this.text,
  });

  /// if [fallbackCloseDuration] is null, the loader will not close
  /// automatically, otherwise it will close after the given duration
  static void show(
    BuildContext context, {
    Duration? fallbackCloseDuration,
    bool barrierDismissible = true,
    String? text,
  }) {
    showDialog<void>(
      context: context,
      barrierColor: Colors.transparent,
      barrierDismissible: barrierDismissible,
      builder: (context) => FlutterAppBlurryLoader(
        fallbackCloseDuration: fallbackCloseDuration,
        text: text,
      ),
    );
  }

  static void hide(BuildContext context) => Navigator.pop(context);

  final Duration? fallbackCloseDuration;
  final Duration? tweenAnimationDuration;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future<void>.delayed(fallbackCloseDuration ?? Duration.zero, () {
        if (fallbackCloseDuration != null &&
            context.mounted &&
            Navigator.canPop(context)) {
          Navigator.pop(context);
        }
      }),
      builder: (context, _) => TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: 5),
        duration: tweenAnimationDuration ?? const Duration(milliseconds: 750),
        builder: (context, value, child) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: value, sigmaY: value),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: context.appColorScheme.surface,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: context.appColorScheme.shadow.withValues(alpha: 0.1),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: context.theme.colorScheme.primary.withValues(
                        alpha: 0.1,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        context.theme.colorScheme.primary,
                      ),
                      strokeWidth: 3,
                    ),
                  ),
                  if (text != null) ...[
                    const SizedBox(height: 20),
                    Text(
                      text!,
                      style: context.appTextTheme.bodyLarge!.copyWith(
                        color: context.theme.colorScheme.onSurface,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
        child: Gaps.gap0,
      ),
    );
  }
}
