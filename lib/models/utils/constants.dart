import 'package:flutter/material.dart';

Color kPrimaryColor = Color(0xFF00BCD4);
Color kConfirmedColor = Color(0xFFFF3D00);
Color kActiveColor = Color(0xFF01579B);
Color kRecoveredColor = Color(0xFF00E676);
Color kDeathColor = Color(0xFF263238);

LinearGradient kGradientShimmer = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color(0xFF6D758F), Color(0xFF6D8887)],
);

RegExp reg = new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
String Function(Match match) mathFunc = (Match match) => '${match[1]}.';
