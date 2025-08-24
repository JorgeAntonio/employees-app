import 'package:attendance_app/src/core/assets/image_assets.dart';
import 'package:attendance_app/src/core/router/router.dart';
import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/features/base/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/app_destination_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    required this.child,
    required this.currentIndex,
    required this.onTabSelected,
    super.key,
  });

  final Widget child;
  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.appColorScheme;

    return Scaffold(
      extendBody: true, // to make floating action button notch transparent
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageAssets.logo,
              height: DoubleSizes.size32,
              width: DoubleSizes.size32,
            ),
            const SizedBox(width: DoubleSizes.size8),
            Column(
              children: [
                Text('CONSORCIO', style: TextStyle(color: colorScheme.primary)),
                Text(
                  'EJECUTOR EL TIGRE',
                  style: context.appTextTheme.bodySmall?.copyWith(
                    color: colorScheme.primary.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: const AppDrawer(),

      body: child,
      bottomNavigationBar: AppDestinationBar(
        currentIndex: currentIndex,
        onTabSelected: onTabSelected,
      ),
      floatingActionButton: Container(
        width: DoubleSizes.size64,
        height: DoubleSizes.size64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme.secondary,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.4),
              blurRadius: DoubleSizes.size8,
              offset: const Offset(0, DoubleSizes.size4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(DoubleSizes.size32),
            onTap: () {
              // Navigate directly to scanner route
              context.pushNamed(Routes.scanner.name);
            },
            child: Icon(
              Icons.qr_code_scanner,
              color: colorScheme.onSecondary,
              size: DoubleSizes.size32,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
