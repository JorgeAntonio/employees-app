import 'package:flutter/widgets.dart';

class AppInsets {
  AppInsets._();

  // Base insets
  static const zero = EdgeInsets.zero;
  static const all1 = EdgeInsets.all(1);
  static const all2 = EdgeInsets.all(2);
  static const all3 = EdgeInsets.all(3);

  // Material 3 standard insets
  static const all4 = EdgeInsets.all(4);
  static const all8 = EdgeInsets.all(8);
  static const all12 = EdgeInsets.all(12);
  static const all16 = EdgeInsets.all(16);
  static const all20 = EdgeInsets.all(20);
  static const all24 = EdgeInsets.all(24);
  static const all32 = EdgeInsets.all(32);
  static const all40 = EdgeInsets.all(40);
  static const all48 = EdgeInsets.all(48);

  // Symmetric
  static const h4 = EdgeInsets.symmetric(horizontal: 4);
  static const v4 = EdgeInsets.symmetric(vertical: 4);
  static const h8 = EdgeInsets.symmetric(horizontal: 8);
  static const v8 = EdgeInsets.symmetric(vertical: 8);
  static const h12 = EdgeInsets.symmetric(horizontal: 12);
  static const v12 = EdgeInsets.symmetric(vertical: 12);
  static const h16 = EdgeInsets.symmetric(horizontal: 16);
  static const v16 = EdgeInsets.symmetric(vertical: 16);
  static const h20 = EdgeInsets.symmetric(horizontal: 20);
  static const v20 = EdgeInsets.symmetric(vertical: 20);
  static const h24 = EdgeInsets.symmetric(horizontal: 24);
  static const v24 = EdgeInsets.symmetric(vertical: 24);
  static const h32 = EdgeInsets.symmetric(horizontal: 32);
  static const v32 = EdgeInsets.symmetric(vertical: 32);

  // Legacy insets (kept for backward compatibility)
  static const all6 = EdgeInsets.all(6);
  static const all10 = EdgeInsets.all(10);
  static const all30 = EdgeInsets.all(30);

  static const v2 = EdgeInsets.symmetric(vertical: 2);
  static const h2 = EdgeInsets.symmetric(horizontal: 2);
  static const v6 = EdgeInsets.symmetric(vertical: 6);
  static const h6 = EdgeInsets.symmetric(horizontal: 6);
  static const v10 = EdgeInsets.symmetric(vertical: 10);
  static const h10 = EdgeInsets.symmetric(horizontal: 10);
  static const v30 = EdgeInsets.symmetric(vertical: 30);
  static const h30 = EdgeInsets.symmetric(horizontal: 30);
  static const v60 = EdgeInsets.symmetric(vertical: 60);
  static const h60 = EdgeInsets.symmetric(horizontal: 60);

  // Legacy directional insets
  static const t2 = EdgeInsets.only(top: 2);
  static const t4 = EdgeInsets.only(top: 4);
  static const t6 = EdgeInsets.only(top: 6);
  static const t8 = EdgeInsets.only(top: 8);
  static const t10 = EdgeInsets.only(top: 10);
  static const t12 = EdgeInsets.only(top: 12);
  static const t16 = EdgeInsets.only(top: 16);
  static const t20 = EdgeInsets.only(top: 20);
  static const t24 = EdgeInsets.only(top: 24);
  static const t30 = EdgeInsets.only(top: 30);

  static const b2 = EdgeInsets.only(bottom: 2);
  static const b4 = EdgeInsets.only(bottom: 4);
  static const b6 = EdgeInsets.only(bottom: 6);
  static const b8 = EdgeInsets.only(bottom: 8);
  static const b10 = EdgeInsets.only(bottom: 10);
  static const b14 = EdgeInsets.only(bottom: 14);
  static const b16 = EdgeInsets.only(bottom: 16);
  static const b20 = EdgeInsets.only(bottom: 20);
  static const b24 = EdgeInsets.only(bottom: 24);
  static const b30 = EdgeInsets.only(bottom: 30);

  static const l2 = EdgeInsets.only(left: 2);
  static const l4 = EdgeInsets.only(left: 4);
  static const l6 = EdgeInsets.only(left: 6);
  static const l8 = EdgeInsets.only(left: 8);
  static const l10 = EdgeInsets.only(left: 10);
  static const l14 = EdgeInsets.only(left: 14);
  static const l16 = EdgeInsets.only(left: 16);
  static const l20 = EdgeInsets.only(left: 20);
  static const l24 = EdgeInsets.only(left: 24);
  static const l30 = EdgeInsets.only(left: 30);

  static const r2 = EdgeInsets.only(right: 2);
  static const r4 = EdgeInsets.only(right: 4);
  static const r6 = EdgeInsets.only(right: 6);
  static const r8 = EdgeInsets.only(right: 8);
  static const r10 = EdgeInsets.only(right: 10);
  static const r14 = EdgeInsets.only(right: 14);
  static const r16 = EdgeInsets.only(right: 16);
  static const r20 = EdgeInsets.only(right: 20);
  static const r24 = EdgeInsets.only(right: 24);
  static const r30 = EdgeInsets.only(right: 30);
}
