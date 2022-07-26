import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xffe55f48, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xFFFFE500),
      100: const Color(0xFFFFE500),
      200: const Color(0xFFFFE500),
      300: const Color(0xFFFFE500),
      400: const Color(0xFFFFE500),
      500: const Color(0xFFFFE500),
      600: const Color(0xFFFFE500),
      700: const Color(0xFF000000),
      800: const Color(0xFF000000),
      900: const Color(0xFF000000),
    },
  );

  static const Color PRIMARY = Color(0xFFFFA030);
  static const Color INFO = Color(0xFFFFE500);
  static const EXPLORECARD_BG = Color(0xFFD1E2FC);
  static const Color SECONDARY = Color(0xFF12B0E8);
  static const Color ACCENT = Color(0xFFFF4444);
  static const BACKGROUND = Color(0xFFFF9F2E);
  static const DARK = Color(0xFF000000);
  static const SUCCESS = Color(0xFF1FBC4B);
  static const WARNING = Color(0xFF00BBF6);
  static const DANGER = Color(0xFFFF4444);
  static const Grey = Colors.grey;
  static const LiteGrey = Color(0xFFE0E0F0);
  static const white = Colors.white;
  static const GRADIENT1 = Color(0xFF7D19B0);
  static const GRADIENT2 = Color(0xFF9575CD);

  static Color hexToColor({required String code}) {
    try {
      return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    } catch (e) {
      // debugPrint("Exception:" + e.toString());
    }

    return Color(0xFFEEEEEE);
  }

  static LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    //colors: [SECONDARY, PRIMARY],
    colors: [Colors.black, Colors.black],
  );

  static LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [DARK, DARK],
  );
}
