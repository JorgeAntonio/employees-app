import 'package:flutter/material.dart';

class AppRadius {
  AppRadius._();

  static const BorderRadius zero = BorderRadius.zero;

  // Material 3 standard values
  static const BorderRadius xs = BorderRadius.all(Radius.circular(4));
  static const BorderRadius sm = BorderRadius.all(Radius.circular(8));
  static const BorderRadius md = BorderRadius.all(Radius.circular(12));
  static const BorderRadius lg = BorderRadius.all(Radius.circular(16));
  static const BorderRadius xl = BorderRadius.all(Radius.circular(28));
  static const BorderRadius full = BorderRadius.all(Radius.circular(9999));

  // iOS standard values
  static const BorderRadius iosSmall = BorderRadius.all(Radius.circular(6));
  static const BorderRadius iosMedium = BorderRadius.all(Radius.circular(8));
  static const BorderRadius iosLarge = BorderRadius.all(Radius.circular(12));
  static const BorderRadius iosXLarge = BorderRadius.all(Radius.circular(16));

  // iOS specific components
  static const BorderRadius iosButton = BorderRadius.all(Radius.circular(8));
  static const BorderRadius iosAlert = BorderRadius.all(Radius.circular(13));
  static const BorderRadius iosCard = BorderRadius.all(Radius.circular(12));
  static const BorderRadius iosListCell = BorderRadius.all(Radius.circular(8));
  static const BorderRadius iosModal = BorderRadius.all(Radius.circular(12));

  // Custom vertical top variants
  static const BorderRadius radiusVT8 = BorderRadius.vertical(
    top: Radius.circular(8),
  );
  static const BorderRadius radiusVT12 = BorderRadius.vertical(
    top: Radius.circular(12),
  );
  static const BorderRadius radiusVT16 = BorderRadius.vertical(
    top: Radius.circular(16),
  );
  static const BorderRadius radiusVT28 = BorderRadius.vertical(
    top: Radius.circular(28),
  );

  // Custom only top variants
  static const BorderRadius onlyTop8 = BorderRadius.only(
    topLeft: Radius.circular(8),
    topRight: Radius.circular(8),
  );
  static const BorderRadius onlyTop16 = BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
  );
}
