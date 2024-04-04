import 'package:flutter/material.dart';

const Map<String, String> contentColors = {
  "primary": "#202020",
  "secondary": "#606060",
  "tertiary": "#AAAAAA",
};

const Map<String, String> borderColors = {
  "primary": "#808080",
  "secondary": "#B5B3B3",
  "tertiary": "#F8F8F8",
};

const Map<String, String> fillColors = {
  "primary": "#1ca9c9",
  "secondary": "#C2C2C2",
  "tertiary": "#F2F2F2",
  "error": "#FF1515",
};

const Map<String, dynamic> backgroundColors = {
  "primary": "#000000",
  "secondary": "#404040",
  "tertiary": "#A0A0A0",
  "white": "#FFFFFF",
  "peach": {
    600: "#FFB698",
    400: "#FBE5E1",
    200: "FFF2ED",
    100: "FFF7F4",
  },
};

class ColorTokens {
  final Color brand = hexToColor("#152258");
  final ColorHex content = ColorHex(contentColors);
  final ColorHex border = ColorHex(borderColors);
  final ColorHex fill = ColorHex(fillColors);
  final BackgroundColors background = BackgroundColors();
  final Color shadow = const Color.fromRGBO(0, 0, 0, 0.25);
}

class ColorHex {
  final Map<String, String> colorMap;

  ColorHex(this.colorMap);

  Color get primary => hexToColor(colorMap["primary"]!);
  Color get secondary => hexToColor(colorMap["secondary"]!);
  Color get tertiary => hexToColor(colorMap["tertiary"]!);
  Color get error => hexToColor(colorMap["error"]!);
  Color get white => hexToColor("#FFFFFF");
}

class BackgroundColors {
  BackgroundColors();

  final primary = hexToColor(backgroundColors["primary"]!);
  final secondary = hexToColor(backgroundColors["secondary"]!);
  final tertiary = hexToColor(backgroundColors["tertiary"]!);
  final white = hexToColor(backgroundColors["white"]!);
  final peach = BackgroundPeach();
}

class BackgroundPeach {
  final level600 = hexToColor(backgroundColors["peach"][600]!);
  final level400 = hexToColor(backgroundColors["peach"][400]!);
  final level200 = hexToColor(backgroundColors["peach"][200]!);
  final level100 = hexToColor(backgroundColors["peach"][100]!);
}

Color hexToColor(String hexColor) {
  var hexColorWithoutHash = hexColor.replaceAll("#", "");
  if (hexColorWithoutHash.length == 6) {
    hexColorWithoutHash = "FF$hexColorWithoutHash";
  } else {
    throw Exception("Invalid hex color: $hexColorWithoutHash");
  }
  return Color(int.parse(hexColorWithoutHash, radix: 16));
}
