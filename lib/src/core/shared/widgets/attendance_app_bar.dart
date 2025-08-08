import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:flutter/material.dart';

class AttendanceAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AttendanceAppBar({super.key, this.title, this.actions});

  final String? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.appColorScheme.primary,
      elevation: 0,
      title: Text(
        title ?? 'Attendance App',
        style: TextStyle(color: context.appColorScheme.onPrimary),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
