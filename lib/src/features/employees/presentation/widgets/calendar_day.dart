import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/utils/current_date.dart';
import 'package:flutter/material.dart';

class CalendarDay extends StatelessWidget {
  final DateTime date;
  final bool isSelected;
  final bool hasActivity;
  final VoidCallback onTap;
  final bool isHorizontal;

  const CalendarDay({
    super.key,
    required this.date,
    required this.isSelected,
    required this.hasActivity,
    required this.onTap,
    this.isHorizontal = false,
  });

  @override
  Widget build(BuildContext context) {
    final isToday = isSameDate(date, DateTime.now());

    Color bgColor = context.appColorScheme.grayLight;
    Color textColor = context.appColorScheme.grayDark;
    FontWeight fontWeight = FontWeight.normal;
    double elevation = 0;

    if (isSelected) {
      bgColor = context.appColorScheme.primary;
      textColor = context.appColorScheme.onPrimary;
      fontWeight = FontWeight.bold;
      elevation = 2;
    } else if (isToday) {
      bgColor = context.appColorScheme.secondaryContainer;
      textColor = context.appColorScheme.onSecondaryContainer;
      fontWeight = FontWeight.bold;
    }

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: isHorizontal ? 48 : null,
        height: isHorizontal ? 56 : null,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(isHorizontal ? 14 : 8),
          boxShadow: elevation > 0
              ? [
                  BoxShadow(
                    color: context.appColorScheme.shadow.withValues(
                      alpha: 0.08,
                    ),
                    blurRadius: isHorizontal ? 6 : 4,
                    offset: Offset(0, isHorizontal ? 2 : 1),
                  ),
                ]
              : [],
          border: hasActivity && !isSelected && !isToday
              ? Border.all(color: Colors.teal, width: isHorizontal ? 2 : 1)
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ["Lun", "Mar", "Mié", "Jue", "Vier", "Sáb", "Dom"][date.weekday -
                  1],
              style: TextStyle(
                fontSize: isHorizontal ? 13 : 8,
                color: textColor,
                fontWeight: fontWeight,
              ),
            ),
            SizedBox(height: isHorizontal ? 2 : 1),
            Text(
              date.day.toString(),
              style: TextStyle(
                fontSize: isHorizontal ? 17 : 14,
                color: textColor,
                fontWeight: fontWeight,
              ),
            ),
            if (hasActivity && !isSelected && !isToday)
              Padding(
                padding: EdgeInsets.only(top: isHorizontal ? 3.0 : 2.0),
                child: Container(
                  width: isHorizontal ? 7 : 4,
                  height: isHorizontal ? 7 : 4,
                  decoration: const BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
