import 'package:build/build.dart';
import 'package:build_test/build_test.dart';
import 'package:test/test.dart';
import 'package:yaru_color_builder/builder.dart';

void main() {
  test('builder', () async {
    await testBuilder(yaruColorBuilder(BuilderOptions.empty), {
      'test_colors|lib/test_colors.dart': testColors,
      'yaru_color_generator|lib/yaru_color_generator.dart': annotation,
    }, generateFor: {
      'test_colors|lib/test_colors.dart',
    }, outputs: {
      'test_colors|lib/test_colors.g.dart': expectedColors,
    });
  });
}

final annotation = '''
class GeneratedYaruColor {
  const GeneratedYaruColor(this.primary);
  final int primary;
}
''';

final testColors = r'''
import 'package:yaru_color_generator/yaru_color_generator.dart';

part 'test_colors.g.dart';

// global variables
@GeneratedYaruColor(0xFFFF0000)
const MaterialColor red = _$red;

@GeneratedYaruColor(0xFF00FF00)
const MaterialColor green = _$green;

@GeneratedYaruColor(0xFF0000FF)
const MaterialColor blue = _$blue;

// global accessors
@GeneratedYaruColor(0xFFFFFF00)
MaterialColor get yellow => _$yellow;

// class member fields
class FooColors {
  @GeneratedYaruColor(0xFFFF0000)
  static const MaterialColor red = _$FooColors.red;

  @GeneratedYaruColor(0xFF00FF00)
  static const MaterialColor green = _$FooColors.green;

  @GeneratedYaruColor(0xFF0000FF)
  static const MaterialColor blue = _$FooColors.blue;
}

// class member getters
class BarColors {
  @GeneratedYaruColor(0xFFFF0000)
  MaterialColor get red => _$BarColors.red;

  @GeneratedYaruColor(0xFF00FF00)
  MaterialColor get green => _$BarColors.green;

  @GeneratedYaruColor(0xFF0000FF)
  MaterialColor get blue => _$BarColors.blue;
}
''';

final expectedColors = r'''
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_colors.dart';

// **************************************************************************
// YaruColorGenerator
// **************************************************************************

const dynamic _$red = dynamic(0xFFFF0000, {
  50: 0xFFFFE7E6,
  100: 0xFFFFC7B8,
  200: 0xFFFFA28A,
  300: 0xFFFF795B,
  400: 0xFFFF5436,
  500: 0xFFFF200C,
  600: 0xFFFF1507,
  700: 0xFFFF0000,
  800: 0xFFF10000,
  900: 0xFFDA0000
});

const dynamic _$green = dynamic(0xFF00FF00, {
  50: 0xFFEBFFE5,
  100: 0xFFCCFFBE,
  200: 0xFFA3FF90,
  300: 0xFF6CFF57,
  400: 0xFF00FF00,
  500: 0xFF00FC00,
  600: 0xFF00EA00,
  700: 0xFF00D300,
  800: 0xFF00BE00,
  900: 0xFF009900
});

const dynamic _$blue = dynamic(0xFF0000FF, {
  50: 0xFFF0E6FF,
  100: 0xFFD5C2FF,
  200: 0xFFB798FF,
  300: 0xFF966BFF,
  400: 0xFF7745FF,
  500: 0xFF5013FF,
  600: 0xFF3B0EFF,
  700: 0xFF0000FF,
  800: 0xFF0000FB,
  900: 0xFF0000F9
});

const dynamic _$yellow = dynamic(0xFFFFFF00, {
  50: 0xFFFFFFE6,
  100: 0xFFFCFDC0,
  200: 0xFFF9FA93,
  300: 0xFFF5F662,
  400: 0xFFF0F234,
  500: 0xFFFFFF00,
  600: 0xFFFFEB00,
  700: 0xFFFFD100,
  800: 0xFFFFB700,
  900: 0xFFFF8A00
});

class _$FooColors {
  static const dynamic red = dynamic(0xFFFF0000, {
    50: 0xFFFFE7E6,
    100: 0xFFFFC7B8,
    200: 0xFFFFA28A,
    300: 0xFFFF795B,
    400: 0xFFFF5436,
    500: 0xFFFF200C,
    600: 0xFFFF1507,
    700: 0xFFFF0000,
    800: 0xFFF10000,
    900: 0xFFDA0000
  });

  static const dynamic green = dynamic(0xFF00FF00, {
    50: 0xFFEBFFE5,
    100: 0xFFCCFFBE,
    200: 0xFFA3FF90,
    300: 0xFF6CFF57,
    400: 0xFF00FF00,
    500: 0xFF00FC00,
    600: 0xFF00EA00,
    700: 0xFF00D300,
    800: 0xFF00BE00,
    900: 0xFF009900
  });

  static const dynamic blue = dynamic(0xFF0000FF, {
    50: 0xFFF0E6FF,
    100: 0xFFD5C2FF,
    200: 0xFFB798FF,
    300: 0xFF966BFF,
    400: 0xFF7745FF,
    500: 0xFF5013FF,
    600: 0xFF3B0EFF,
    700: 0xFF0000FF,
    800: 0xFF0000FB,
    900: 0xFF0000F9
  });
}

class _$BarColors {
  static const dynamic red = dynamic(0xFFFF0000, {
    50: 0xFFFFE7E6,
    100: 0xFFFFC7B8,
    200: 0xFFFFA28A,
    300: 0xFFFF795B,
    400: 0xFFFF5436,
    500: 0xFFFF200C,
    600: 0xFFFF1507,
    700: 0xFFFF0000,
    800: 0xFFF10000,
    900: 0xFFDA0000
  });

  static const dynamic green = dynamic(0xFF00FF00, {
    50: 0xFFEBFFE5,
    100: 0xFFCCFFBE,
    200: 0xFFA3FF90,
    300: 0xFF6CFF57,
    400: 0xFF00FF00,
    500: 0xFF00FC00,
    600: 0xFF00EA00,
    700: 0xFF00D300,
    800: 0xFF00BE00,
    900: 0xFF009900
  });

  static const dynamic blue = dynamic(0xFF0000FF, {
    50: 0xFFF0E6FF,
    100: 0xFFD5C2FF,
    200: 0xFFB798FF,
    300: 0xFF966BFF,
    400: 0xFF7745FF,
    500: 0xFF5013FF,
    600: 0xFF3B0EFF,
    700: 0xFF0000FF,
    800: 0xFF0000FB,
    900: 0xFF0000F9
  });
}
''';
