import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AttendanceAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AttendanceAppBar({
    super.key,
    this.title,
    this.actions,
    this.leading,
    this.backgroundColor,
    this.centerTitle,
  });

  final String? title;
  final List<Widget>? actions;
  final bool? leading;
  final Color? backgroundColor;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? context.appColorScheme.primary,
      iconTheme: IconThemeData(color: context.appColorScheme.onPrimary),
      centerTitle: centerTitle ?? false,
      elevation: 0,
      title: Text(
        title ?? 'Attendance App',
        style: TextStyle(color: context.appColorScheme.onPrimary),
      ),
      actions: actions,
      leading: (leading ?? false) && context.canPop()
          ? IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: context.appColorScheme.onPrimary,
              ),
              onPressed: () => context.pop(),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
