import 'package:flutter/material.dart';

const kColor = Color(0xFF090D21);
const kSecondaryColor = Color(0xFF121428);
const kHoverColor = Color(0xFF1D1F33);
const kAccentColor = Color(0xFFEB1455);
const kTransparentAccentColor = Color(0x20EB1455);

const kTextColor = Color(0xFFFCFCFC);
const kTextSecondaryColor = Color(0xFF8D8E98);
const kTextSecondaryTransparentColor = Color(0x158D8E98);

enum GenderEnum {
  male,
  female,
}

TextStyle kTextLabel = const TextStyle(
  color: kTextSecondaryColor,
  fontSize: 22,
  fontWeight: FontWeight.w600,
);

TextStyle kTextNumberLabel = const TextStyle(
  color: kTextColor,
  fontSize: 65,
  fontWeight: FontWeight.w700,
);

